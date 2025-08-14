#include <xc.h>
#include <stdio.h>
#include <string.h>

// Configuración de bits del PIC16F877A
#pragma config FOSC = HS        // Oscilador de cristal de alta velocidad
#pragma config WDTE = OFF       // Watchdog Timer desactivado
#pragma config PWRTE = ON       // Power-up Timer activado
#pragma config BOREN = ON       // Brown-out Reset activado
#pragma config LVP = OFF        // Low Voltage Programming desactivado
#pragma config CPD = OFF        // Data EEPROM Protection desactivado
#pragma config WRT = OFF        // Flash Program Memory Write desactivado
#pragma config CP = OFF         // Flash Program Memory Code Protection desactivado

#define _XTAL_FREQ 20000000     // Frecuencia del oscilador (20MHz)

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

// Variables para PWM por software
volatile unsigned int servo_pulse_width = 1000; // Ancho del pulso en microsegundos
volatile unsigned char pwm_counter = 0;
volatile unsigned char generate_pwm = 1;

// Configuración UART para Bluetooth
void UART_Init() {
    TRISC7 = 1;     // RX como entrada (Pin 26)
    TRISC6 = 0;     // TX como salida (Pin 25)
    
    SPBRG = 25;     // Baud rate 9600 para 4MHz
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

// Timer1 para PWM por software - CONFIGURACIÓN CORREGIDA
void Timer1_Init() {
    T1CON = 0x21;     // Timer1 ON, Prescaler 1:4, oscilador interno
    TMR1H = 0;        // Limpiar Timer1
    TMR1L = 0;
    TMR1IF = 0;       // Limpiar bandera
    TMR1IE = 1;       // Habilitar interrupción Timer1
}

// Generar PWM por software para el servo
void Generate_Servo_PWM() {
    if(generate_pwm) {
        // Generar pulso
        SERVO_PWM = 1;                              // Pin alto
        __delay_us(servo_pulse_width);              // Mantener por tiempo especificado
        SERVO_PWM = 0;                              // Pin bajo
        
        // Completar período de 20ms
        unsigned int remaining_time = 20000 - servo_pulse_width;
        
        // Dividir el delay largo en chunks más pequeños para no bloquear
        while(remaining_time > 1000) {
            __delay_us(1000);
            remaining_time -= 1000;
        }
        if(remaining_time > 0) {
            __delay_us(remaining_time);
        }
    }
}

// Configurar posición del servomotor
void Move_Servo(enum LockState state) {
    if(state == ABIERTO) {
        servo_pulse_width = 1500;  // 1.5ms = 90 grados
    } else {
        servo_pulse_width = 1000;  // 1ms = 0 grados
    }
}

// Configuración del botón CORREGIDA
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
    } else {
        currentState = CERRADO;
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

// Rutina de Servicio de Interrupción
void __interrupt() ISR() {
    // Interrupción UART (Bluetooth)
    if(RCIF) {
        bluetoothData = RCREG;
        
        // Procesar comando recibido
        if(bluetoothData == 'A' || bluetoothData == 'a') {
            currentState = ABIERTO;
            UART_Write_String("Comando: ABRIR\n");
        } else if(bluetoothData == 'C' || bluetoothData == 'c') {
            currentState = CERRADO;
            UART_Write_String("Comando: CERRAR\n");
        }
    }
    
    // Interrupción externa (Botón)
    if(INTF) {
        INTF = 0;  // Limpiar bandera inmediatamente
        
        // Anti-rebote simple
        __delay_ms(50);
        
        if(BOTON_MANUAL == 1) {
            Toggle_Lock_State();
            UART_Write_String("Boton presionado\n");
            
            // Esperar a que se suelte
            while(BOTON_MANUAL == 1) {
                __delay_ms(10);
            }
            __delay_ms(50);
        }
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
    Move_Servo(currentState);
    
    // Mensaje de inicio
    UART_Write_String("=== SISTEMA INICIADO ===\n");
    UART_Write_String("PWM por software - 50Hz exactos\n");
    UART_Write_String("Comandos: A=Abrir, C=Cerrar\n");
    
    // ===== BUCLE PRINCIPAL =====
    while(1) {
        // 1. Generar señal PWM para el servo (CRÍTICO - cada 20ms)
        Generate_Servo_PWM();
        
        // 2. Leer temperatura (solo cada pocos ciclos para no interferir con PWM)
        static unsigned char temp_counter = 0;
        temp_counter++;
        if(temp_counter >= 50) {  // Leer temperatura cada 50 ciclos ≈ 1 segundo
            temperature = Read_Temperature();
            Check_Temperature_Alarm();
            temp_counter = 0;
        }
        
        // 3. Actualizar posición del servomotor
        Move_Servo(currentState);
        
        // 4. Controlar LEDs
        if(fireAlarm) {
            // Modo alarma: LED rojo parpadeando
            LED_ABIERTO = 0;
            ledBlinkCounter++;
            if(ledBlinkCounter > 25) {  // Parpadeo cada ~500ms
                LED_CERRADO = !LED_CERRADO;
                ledBlinkCounter = 0;
            }
        } else {
            // Modo normal: LED según estado
            LED_ABIERTO = (currentState == ABIERTO);
            LED_CERRADO = (currentState == CERRADO);
            ledBlinkCounter = 0;
        }
        
        // 5. Enviar datos por Bluetooth (solo ocasionalmente)
        static unsigned char bt_counter = 0;
        bt_counter++;
        if(bt_counter >= 25) {  // Enviar datos cada 25 ciclos ≈ 500ms
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
        
        // El bucle se repite cada ~20ms debido a Generate_Servo_PWM()
    }
}