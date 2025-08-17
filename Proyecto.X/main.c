#include <xc.h>
#include <stdio.h>

#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 20000000  // 20 MHz

// Definición de pines
#define LED_ABIERTO    RD0      // LED Verde - Estado Abierto
#define LED_CERRADO    RD1      // LED Rojo - Estado Cerrado/Alarma
#define SERVO_PWM      RC2      // Pin PWM para servomotor
#define BOTON_MANUAL   RB0      // Botón para control manual

// Umbral de temperatura para alarma (en °C)
#define TEMP_ALARM_THRESHOLD 50.0

// Estados de la cerradura
enum LockState {CERRADO, ABIERTO} currentState = CERRADO;

// Variables globales
volatile float temperature = 0.0;
volatile unsigned char bluetoothData = 0;
volatile unsigned char fireAlarm = 0;
volatile unsigned char ledBlinkCounter = 0;

// Variables para control del servo - CORREGIDAS
volatile unsigned char servo_needs_update = 1;

// Configuración UART para Bluetooth
void UART_Init() {
    TRISC7 = 1;     // RX como entrada (Pin 26)
    TRISC6 = 0;     // TX como salida (Pin 25)
    
    SPBRG = 31;     // Baud rate 9600 para 20MHz: (20000000/(64*9600))-1 = 31
    TXSTA = 0x24;   // TXEN=1, BRGH=1, 8-bit, Asíncrono
    RCSTA = 0x90;   // SPEN=1, CREN=1, Recepción continua habilitada
}

// Enviar un carácter por UART
void UART_Write(char data) {
    while(!TXIF);   // Esperar hasta que buffer esté libre
    TXREG = data;
}

// Enviar cadena de caracteres por UART
void UART_Write_String(const char* str) {
    while(*str) {
        UART_Write(*str++);
    }
}

// Configuración ADC para sensor LM35
void ADC_Init() {
    ADCON1 = 0x8E;   // Justificado derecha, solo AN0 como analógico, Vref=Vdd
    ADCON0 = 0x41;   // Canal AN0, ADC encendido, Fosc/8
    TRISA0 = 1;      // RA0 como entrada analógica
}

// Leer temperatura del LM35
float Read_Temperature() {
    __delay_ms(2);          // Tiempo de adquisición
    GO_nDONE = 1;           // Iniciar conversión ADC
    while(GO_nDONE);        // Esperar fin de conversión
    
    // Leer valor ADC de 10 bits
    int adcValue = (ADRESH << 8) + ADRESL;
    
    // Convertir a temperatura: LM35 = 10mV/°C
    return (adcValue * 5.0 * 100.0) / 1024.0;
}

// FUNCIONES DEL SERVO CORREGIDAS - BASADAS EN PRUEBA.C
// Mover servo a 0° (CERRADO)
void Servo_MoveTo0() {
    for(int i = 0; i < 20; i++) {  // Enviar señal múltiples veces para estabilidad
        SERVO_PWM = 1;
        __delay_us(500);       // 0.5ms = 0 grados 
        SERVO_PWM = 0; 
        __delay_ms(20);        // Período de 20ms
    }
}

// Mover servo a 180° (ABIERTO)
void Servo_MoveTo180() {
    for(int i = 0; i < 20; i++) {  // Enviar señal múltiples veces para estabilidad
        SERVO_PWM = 1;
        __delay_us(2000);      // 2.0ms = 180 grados
        SERVO_PWM = 0; 
        __delay_ms(20);        // Período de 20ms
    }
}

// Configurar posición del servomotor - SIMPLIFICADA
void Move_Servo(enum LockState state) {
    if(state == ABIERTO) {
        Servo_MoveTo180();
    } else {
        Servo_MoveTo0();
    }
}

// Configuración del botón
void Button_Init() {
    TRISB0 = 1;         // RB0 como entrada
    
    // Configurar interrupción externa
    OPTION_REGbits.INTEDG = 1;  // Flanco ascendente
    INTF = 0;           // Limpiar bandera
    INTE = 1;           // Habilitar interrupción externa
}

// Inicializar puerto del servo
void Servo_Init() {
    TRISC2 = 0;         // RC2 como salida
    SERVO_PWM = 0;      // Inicializar en bajo
}

// Alternar estado de la cerradura
void Toggle_Lock_State() {
    if(currentState == CERRADO) {
        currentState = ABIERTO;
        servo_needs_update = 1;  // Marcar que se necesita actualizar servo
    } else {
        currentState = CERRADO;
        servo_needs_update = 1;  // Marcar que se necesita actualizar servo
    }
}

// Verificar alarma de temperatura
void Check_Temperature_Alarm() {
    if(temperature > TEMP_ALARM_THRESHOLD) {
        fireAlarm = 1;
    } else {
        fireAlarm = 0;
    }
}

// Rutina de Servicio de Interrupción - SIMPLIFICADA
void __interrupt() ISR() {
    // Interrupción UART (Bluetooth)
    if(RCIF) {
        bluetoothData = RCREG;
        
        // Procesar comando recibido
        if(bluetoothData == 'A' || bluetoothData == 'a') {
            currentState = ABIERTO;
            servo_needs_update = 1;
            UART_Write_String("Comando: ABRIR\n");
        } else if(bluetoothData == 'C' || bluetoothData == 'c') {
            currentState = CERRADO;
            servo_needs_update = 1;
            UART_Write_String("Comando: CERRAR\n");
        }
    }
    
    // Interrupción externa (Botón) - MEJORADA
    if(INTF) {
        INTF = 0;  // Limpiar bandera inmediatamente
        
        // Marcar que se presionó el botón (procesarlo en main para evitar delays en ISR)
        servo_needs_update = 1;
    }
}

// Función principal
void main(void) {
    // ===== CONFIGURACIÓN INICIAL =====
    
    // Configurar puertos
    TRISB = 0x01;   // RB0 como entrada (botón)
    TRISD = 0x00;   // Puerto D como salida (LEDs)
    PORTB = 0x00;   // Limpiar puertos
    PORTD = 0x00;
    
    // Inicializar periféricos
    Servo_Init();   // Configurar pin del servo
    ADC_Init();     // Conversor analógico-digital
    UART_Init();    // Comunicación Bluetooth
    Button_Init();  // Botón con interrupción
    
    // Habilitar interrupciones
    RCIE = 1;       // Interrupción UART RX
    INTE = 1;       // Interrupción externa INT
    PEIE = 1;       // Interrupciones periféricas
    GIE = 1;        // Interrupciones globales
    
    // Estado inicial
    currentState = CERRADO;
    Move_Servo(currentState);  // Posicionar servo inicialmente
    
    // Mensaje de inicio
    UART_Write_String("=== SISTEMA INICIADO ===\n");
    UART_Write_String("Servo funcionando correctamente\n");
    UART_Write_String("Comandos: A=Abrir, C=Cerrar\n");
    
    // Variables para control de timing
    unsigned int temp_counter = 0;
    unsigned int bt_counter = 0;
    unsigned char button_pressed = 0;
    
    // ===== BUCLE PRINCIPAL =====
    while(1) {
        // 1. Verificar si se presionó el botón (con anti-rebote)
        if(INTF && !button_pressed) {
            __delay_ms(50);  // Anti-rebote
            if(BOTON_MANUAL == 1) {
                Toggle_Lock_State();
                UART_Write_String("Boton presionado\n");
                button_pressed = 1;
                
                // Esperar a que se suelte
                while(BOTON_MANUAL == 1) {
                    __delay_ms(10);
                }
                __delay_ms(50);
            }
            INTF = 0;  // Limpiar bandera
        }
        
        if(BOTON_MANUAL == 0) {
            button_pressed = 0;
        }
        
        // 2. Actualizar servo solo cuando sea necesario
        if(servo_needs_update) {
            Move_Servo(currentState);
            servo_needs_update = 0;
        }
        
        // 3. Leer temperatura periódicamente
        temp_counter++;
        if(temp_counter >= 1000) {  // Cada ~1000 ciclos
            temperature = Read_Temperature();
            Check_Temperature_Alarm();
            temp_counter = 0;
        }
        
        // 4. Controlar LEDs
        if(fireAlarm) {
            // Modo alarma: LED rojo parpadeando
            LED_ABIERTO = 0;
            ledBlinkCounter++;
            if(ledBlinkCounter > 100) {  // Parpadeo cada ~100 ciclos
                LED_CERRADO = !LED_CERRADO;
                ledBlinkCounter = 0;
            }
        } else {
            // Modo normal: LED según estado
            LED_ABIERTO = (currentState == ABIERTO);
            LED_CERRADO = (currentState == CERRADO);
            ledBlinkCounter = 0;
        }
        
        // 5. Enviar datos por Bluetooth periódicamente
        bt_counter++;
        if(bt_counter >= 500) {  // Cada ~500 ciclos
            // Estado de la cerradura
            if(currentState == ABIERTO) {
                UART_Write_String("S:A\n");
            } else {
                UART_Write_String("S:C\n");
            }
            
            // Temperatura
            char tempStr[20];
            sprintf(tempStr, "T:%.1f\n", temperature);
            UART_Write_String(tempStr);
            
            // Estado de alarma
            if(fireAlarm) {
                UART_Write_String("F:1\n");
            } else {
                UART_Write_String("F:0\n");
            }
            
            bt_counter = 0;
        }
        
        // Pequeño delay para no saturar el sistema
        __delay_ms(1);
    }
}