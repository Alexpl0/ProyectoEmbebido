/*
 * CERRADURA ELECTRÓNICA INTELIGENTE CON MONITOREO DE TEMPERATURA
 * Microcontrolador: PIC16F877A
 * Frecuencia: 20MHz
 * Compilador: XC8
 * 
 * Autores: 
 * - Jesús Alejandro Pérez López
 * - Iber Armando Silva González  
 * - Yusmany José David Rejopachi Sandoval
 * 
 * Universidad Cuauhtémoc Querétaro
 * Agosto 2025
 */

#include <xc.h>
#include <string.h>

/*
 * ===============================================================================
 * SECCIÓN 1: CONFIGURACIÓN DEL MICROCONTROLADOR
 * ===============================================================================
 * Esta sección define los bits de configuración del PIC16F877A que determinan
 * el comportamiento básico del sistema al encenderse.
 */

// Configuración del oscilador - Cristal externo de alta velocidad (20MHz)
#pragma config FOSC = HS        

// Deshabilitación del Watchdog Timer - Evita resets automáticos
#pragma config WDTE = OFF       

// Habilitación del Power-up Timer - Estabiliza el arranque
#pragma config PWRTE = ON       

// Habilitación del Brown-out Reset - Protege contra caídas de voltaje
#pragma config BOREN = ON       

// Deshabilitación de programación de bajo voltaje - Evita programación accidental
#pragma config LVP = OFF        

// Deshabilitación de protección de datos EEPROM
#pragma config CPD = OFF        

// Deshabilitación de protección de escritura de memoria
#pragma config WRT = OFF        

// Deshabilitación de protección de código
#pragma config CP = OFF         

// Definición de frecuencia para funciones de delay
#define _XTAL_FREQ 20000000

/*
 * ===============================================================================
 * SECCIÓN 2: DEFINICIONES DE HARDWARE Y CONSTANTES
 * ===============================================================================
 * Aquí se definen todos los pines utilizados y las constantes del sistema
 */

// Definiciones de pines - Mapeo de hardware
#define SERVO_PIN RC2           // Pin de control PWM para servomotor
#define BOTON_MANUAL RB0        // Pin de entrada para botón manual
#define LED_ABIERTO RD0         // LED verde - indica cerradura abierta
#define LED_CERRADO RD1         // LED rojo - indica cerradura cerrada
#define SENSOR_TEMP RA0         // Pin analógico para sensor LM35

// Definiciones de estados del sistema
enum LockState {
    CERRADO = 0,                // Estado: cerradura cerrada
    ABIERTO = 1                 // Estado: cerradura abierta
};

// Variable global de estado actual
enum LockState currentState = CERRADO;

// Constantes de configuración
#define TEMP_ALARM_THRESHOLD 50.0f  // Umbral de temperatura para alarma (°C)
#define UART_BAUD_9600 129         // Valor SPBRG para 9600 baudios a 20MHz
#define ADC_RESOLUTION 1024        // Resolución del ADC de 10 bits
#define ADC_VREF 5.0f             // Voltaje de referencia del ADC

/*
 * ===============================================================================
 * SECCIÓN 3: MÓDULO DE COMUNICACIÓN UART
 * ===============================================================================
 * Funciones para comunicación serie con el módulo Bluetooth HC-05
 * Configurado para 9600 baudios, 8 bits de datos, 1 bit de parada, sin paridad
 */

/**
 * @brief Inicializa el módulo UART para comunicación Bluetooth
 * Configura los registros necesarios para comunicación serie a 9600 baudios
 */
void UART_Init() {
    // Configuración de velocidad alta para mayor precisión
    TXSTAbits.BRGH = 1;         // High speed baud rate
    SPBRG = UART_BAUD_9600;     // Valor para 9600 baudios
    
    // Habilitación del puerto serie
    RCSTAbits.SPEN = 1;         // Serial port enable
    TXSTAbits.SYNC = 0;         // Modo asíncrono
    TXSTAbits.TXEN = 1;         // Habilitar transmisión
    RCSTAbits.CREN = 1;         // Habilitar recepción continua
    
    // Configuración de pines como entrada/salida
    TRISC6 = 0;                 // TX como salida
    TRISC7 = 1;                 // RX como entrada
}

/**
 * @brief Transmite un carácter por UART
 * @param data: Carácter a transmitir
 */
void UART_Write(char data) {
    while(!TXSTAbits.TRMT);     // Esperar hasta que el buffer esté vacío
    TXREG = data;               // Cargar dato en registro de transmisión
}

/**
 * @brief Transmite una cadena de caracteres por UART
 * @param text: Puntero a la cadena a transmitir
 */
void UART_Write_Text(const char *text) {
    while(*text) {
        UART_Write(*text++);    // Transmitir carácter por carácter
    }
}

/**
 * @brief Lee un carácter del buffer de recepción UART
 * @return Carácter recibido o 0 si no hay datos
 */
char UART_Read() {
    if(PIR1bits.RCIF) {         // Si hay datos en el buffer
        return RCREG;           // Retornar dato recibido
    }
    return 0;                   // No hay datos disponibles
}

/**
 * @brief Verifica si hay datos disponibles en el buffer UART
 * @return 1 si hay datos, 0 si no hay datos
 */
char UART_Data_Ready() {
    return PIR1bits.RCIF;       // Retorna estado del flag de recepción
}

/**
 * @brief Maneja errores de comunicación UART
 * Detecta y corrige errores de overflow en la recepción
 */
void UART_Check_Errors() {
    if(RCSTAbits.OERR) {        // Si hay error de overflow
        RCSTAbits.CREN = 0;     // Deshabilitar recepción
        RCSTAbits.CREN = 1;     // Rehabilitar recepción para limpiar error
    }
}

/*
 * ===============================================================================
 * SECCIÓN 4: MÓDULO ADC PARA SENSOR DE TEMPERATURA
 * ===============================================================================
 * Funciones para conversión analógico-digital del sensor LM35
 * El LM35 entrega 10mV por cada grado Celsius
 */

/**
 * @brief Inicializa el conversor ADC
 * Configura el ADC para leer el sensor de temperatura en RA0
 */
void ADC_Init() {
    ADCON0 = 0x41;              // Canal 0 seleccionado, ADC encendido
    ADCON1 = 0x80;              // Justificación derecha, Vref = Vdd
    TRISA0 = 1;                 // RA0 configurado como entrada analógica
}

/**
 * @brief Realiza una conversión ADC
 * @return Valor digital de 10 bits (0-1023)
 */
unsigned int ADC_Read() {
    __delay_ms(2);              // Tiempo de estabilización del canal
    GO_nDONE = 1;              // Iniciar conversión
    while(GO_nDONE);           // Esperar fin de conversión
    
    // Combinar los 8 bits altos y 2 bits bajos del resultado
    return ((unsigned int)ADRESH << 8) | (unsigned int)ADRESL;
}

/**
 * @brief Convierte lectura ADC a temperatura en grados Celsius
 * @return Temperatura en grados Celsius
 * 
 * Cálculo: 
 * - Resolución ADC: 5V/1024 = 4.88mV por bit
 * - LM35: 10mV/°C
 * - Factor de conversión: (4.88mV/bit) / (10mV/°C) = 0.488°C/bit
 */
float LeerTemperaturaLM35() {
    unsigned int adc_value = ADC_Read();
    
    // Conversión directa: valor_ADC * (5V/1024) * (100°C/V) / 10
    float temp = (adc_value * 4.88f) / 10.0f;
    
    return temp;
}

/*
 * ===============================================================================
 * SECCIÓN 5: CONTROL DEL SERVOMOTOR
 * ===============================================================================
 * Funciones para generar señales PWM que controlan la posición del servomotor SG90
 * El servo requiere pulsos de 1ms (0°) a 2ms (180°) cada 20ms
 */

/**
 * @brief Mueve el servo a la posición 0 grados (cerradura cerrada)
 * Genera un pulso de aproximadamente 0.5ms para posición cerrada
 */
void Servo_MoveTo0() {
    SERVO_PIN = 1;              // Inicio del pulso
    __delay_us(500);            // Duración del pulso para 0 grados
    SERVO_PIN = 0;              // Fin del pulso
    __delay_ms(20);             // Período completo de 20ms
}

/**
 * @brief Mueve el servo a la posición 180 grados (cerradura abierta)
 * Genera un pulso de aproximadamente 2ms para posición abierta
 */
void Servo_MoveTo180() {
    SERVO_PIN = 1;              // Inicio del pulso
    __delay_us(2000);           // Duración del pulso para 180 grados
    SERVO_PIN = 0;              // Fin del pulso
    __delay_ms(20);             // Período completo de 20ms
}

/*
 * ===============================================================================
 * SECCIÓN 6: LÓGICA DE CONTROL DE CERRADURA
 * ===============================================================================
 * Funciones de alto nivel que coordinan el movimiento del servo y los LEDs
 */

/**
 * @brief Abre la cerradura
 * Cambia el estado a ABIERTO, enciende LED verde y mueve servo
 */
void AbrirCerradura() {
    currentState = ABIERTO;     // Actualizar estado del sistema
    LED_ABIERTO = 1;            // Encender LED verde
    LED_CERRADO = 0;            // Apagar LED rojo
    Servo_MoveTo180();          // Mover servo a posición abierta
    
    // Confirmar acción por UART
    UART_Write_Text("CERRADURA ABIERTA\n");
}

/**
 * @brief Cierra la cerradura
 * Cambia el estado a CERRADO, enciende LED rojo y mueve servo
 */
void CerrarCerradura() {
    currentState = CERRADO;     // Actualizar estado del sistema
    LED_ABIERTO = 0;            // Apagar LED verde
    LED_CERRADO = 1;            // Encender LED rojo
    Servo_MoveTo0();            // Mover servo a posición cerrada
    
    // Confirmar acción por UART
    UART_Write_Text("CERRADURA CERRADA\n");
}

/**
 * @brief Alterna el estado de la cerradura
 * Función para el control manual mediante botón
 */
void Toggle_Lock_State() {
    if(currentState == CERRADO) {
        AbrirCerradura();
    } else {
        CerrarCerradura();
    }
}

/*
 * ===============================================================================
 * SECCIÓN 7: SISTEMA DE TELEMETRÍA
 * ===============================================================================
 * Funciones para envío de datos de monitoreo vía Bluetooth
 */

/**
 * @brief Envía datos de telemetría por Bluetooth
 * Formato: "TT.T|ESTADO\n" donde TT.T es la temperatura y ESTADO es ABIERTO/CERRADO
 */
void EnviarDatosBluetooth() {
    float temp = LeerTemperaturaLM35();
    
    // Convertir temperatura a entero con una decimal (ej: 24.5°C -> 245)
    unsigned int temp_int = (unsigned int)(temp * 10.0f);
    
    // Determinar texto del estado actual
    const char* estado = (currentState == ABIERTO) ? "ABIERTO" : "CERRADO";
    
    // Enviar temperatura dígito por dígito para evitar sprintf
    UART_Write((char)('0' + (temp_int / 100)));     // Decenas
    UART_Write((char)('0' + ((temp_int % 100) / 10))); // Unidades
    UART_Write('.');                                 // Punto decimal
    UART_Write((char)('0' + (temp_int % 10)));      // Decimal
    UART_Write('|');                                 // Separador
    UART_Write_Text(estado);                         // Estado de cerradura
    UART_Write('\n');                                // Fin de línea
}

/*
 * ===============================================================================
 * SECCIÓN 8: FUNCIÓN PRINCIPAL
 * ===============================================================================
 * Bucle principal del programa que coordina todas las funcionalidades
 */

/**
 * @brief Función principal del programa
 * Inicializa el sistema y ejecuta el bucle principal de control
 */
void main(void) {
    /*
     * SUBSECCIÓN 8.1: CONFIGURACIÓN INICIAL DE HARDWARE
     */
    
    // Configuración de direcciones de puerto (TRIS registers)
    TRISC2 = 0;                 // RC2 (servo) como salida
    TRISB0 = 1;                 // RB0 (botón) como entrada
    TRISD0 = 0;                 // RD0 (LED verde) como salida
    TRISD1 = 0;                 // RD1 (LED rojo) como salida
    
    // Estados iniciales de los pines
    SERVO_PIN = 0;              // Servo en estado bajo
    LED_ABIERTO = 0;            // LED verde apagado
    LED_CERRADO = 1;            // LED rojo encendido (estado inicial cerrado)
    
    // Variables para manejo del botón (anti-rebote)
    unsigned char last_button = 0;     // Estado anterior del botón
    unsigned char btn_pressed = 0;     // Flag de botón presionado
    
    /*
     * SUBSECCIÓN 8.2: INICIALIZACIÓN DE MÓDULOS
     */
    
    ADC_Init();                 // Inicializar conversor ADC
    UART_Init();                // Inicializar comunicación UART
    __delay_ms(500);            // Tiempo de estabilización del sistema
    
    // Establecer estado inicial del sistema
    CerrarCerradura();
    UART_Write_Text("SISTEMA INICIADO - CERRADURA INTELIGENTE v1.0\n");
    
    /*
     * SUBSECCIÓN 8.3: BUCLE PRINCIPAL DE CONTROL
     */
    
    while(1) {
        /*
         * CONTROL MANUAL POR BOTÓN
         * Implementa detección de flanco ascendente con anti-rebote
         */
        
        // Detectar flanco ascendente del botón
        if(BOTON_MANUAL && !last_button) {
            btn_pressed = 1;            // Marcar que se detectó presión
        }
        last_button = BOTON_MANUAL;     // Actualizar estado anterior
        
        // Procesar liberación del botón (flanco descendente)
        if(btn_pressed && !BOTON_MANUAL) {
            Toggle_Lock_State();        // Cambiar estado de cerradura
            btn_pressed = 0;            // Limpiar flag
            __delay_ms(50);             // Anti-rebote adicional
        }
        
        /*
         * PROCESAMIENTO DE COMANDOS BLUETOOTH
         * Verifica y procesa comandos recibidos vía UART
         */
        
        if(UART_Data_Ready()) {
            char cmd = UART_Read();     // Leer comando recibido
            UART_Check_Errors();       // Verificar errores de comunicación
            
            // Echo del comando para depuración
            UART_Write('<');
            UART_Write(cmd);
            UART_Write('>');
            UART_Write('\n');
            
            // Procesar comandos específicos
            switch(cmd) {
                case 'A':               // Comando: Abrir cerradura
                case 'a':
                    AbrirCerradura();
                    break;
                    
                case 'C':               // Comando: Cerrar cerradura
                case 'c':
                    CerrarCerradura();
                    break;
                    
                case 'D':               // Comando: Enviar datos
                case 'd':
                    EnviarDatosBluetooth();
                    break;
                    
                case 'S':               // Comando: Estado del sistema
                case 's':
                    UART_Write_Text("Estado: ");
                    UART_Write_Text((currentState == ABIERTO) ? "ABIERTO" : "CERRADO");
                    UART_Write('\n');
                    break;
                    
                default:
                    UART_Write_Text("ERROR: Comando no reconocido\n");
                    break;
            }
        }
        
        /*
         * MONITOREO DE TEMPERATURA Y SISTEMA DE ALARMA
         * Verifica la temperatura y activa alarma si es necesaria
         */
        
        static unsigned char alarm_counter = 0;
        float temperatura_actual = LeerTemperaturaLM35();
        
        if(temperatura_actual > TEMP_ALARM_THRESHOLD) {
            // Alarma por alta temperatura - parpadeo rápido
            if(++alarm_counter >= 10) {     // Cada ~10ms
                LED_CERRADO ^= 1;           // Alternar LED rojo
                alarm_counter = 0;
                
                // Enviar alerta cada cierto tiempo
                static unsigned char alert_timer = 0;
                if(++alert_timer >= 100) {  // Cada ~1 segundo
                    UART_Write_Text("ALERTA: TEMPERATURA ALTA - ");
                    EnviarDatosBluetooth();
                    alert_timer = 0;
                }
            }
        } else {
            alarm_counter = 0;
            // Restaurar estado normal de LEDs si no hay alarma
            if(currentState == CERRADO) {
                LED_CERRADO = 1;
                LED_ABIERTO = 0;
            } else {
                LED_CERRADO = 0;
                LED_ABIERTO = 1;
            }
        }
        
        /*
         * TELEMETRÍA PERIÓDICA
         * Envía datos del sistema cada cierto tiempo
         */
        
        static unsigned int telemetry_counter = 0;
        if(++telemetry_counter >= 5000) {   // Cada ~5 segundos
            EnviarDatosBluetooth();
            telemetry_counter = 0;
        }
        
        // Delay principal del bucle (1ms)
        __delay_ms(1);
    }
}