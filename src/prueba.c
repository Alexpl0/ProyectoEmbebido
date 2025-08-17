#include <xc.h>

#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 20000000  // 20 MHz

// Pines
#define SERVO_PWM RC2
#define BOTON_MANUAL RB0
#define LED_ABIERTO RD0
#define LED_CERRADO RD1

// Estados
enum LockState {CERRADO, ABIERTO};
enum LockState currentState = CERRADO;

// Mover servo a 0�
void Servo_MoveTo0() {
    SERVO_PWM = 1;
    __delay_us(500); 
    SERVO_PWM = 0; 
    __delay_ms(20); 
    __delay_ms(1000); 
}

// Mover servo a 180�
void Servo_MoveTo180() {
    SERVO_PWM = 1;
    __delay_us(2000); 
    SERVO_PWM = 0; 
    __delay_ms(20); 
    __delay_ms(1000);
}

// Cambiar estado
void Toggle_Lock_State() {
    if(currentState == CERRADO) {
        currentState = ABIERTO;
        LED_ABIERTO = 1;
        LED_CERRADO = 0;
        Servo_MoveTo180();
    } else {
        currentState = CERRADO;
        LED_ABIERTO = 0;
        LED_CERRADO = 1;
        Servo_MoveTo0();
    }
}


// ==================== Main ====================
void main(void) {
    // Configurar puertos
    TRISC2 = 0;   // salida servo
    TRISB0 = 1;   // entrada bot�n
    TRISD0 = 0;   // LEDs
    TRISD1 = 0;

    SERVO_PWM = 0;
    LED_ABIERTO = 1;
    LED_CERRADO = 0;

    while(1) {
        if(BOTON_MANUAL == 1) {
            Toggle_Lock_State();   // cambia LEDs y mueve servo
            while(BOTON_MANUAL == 1); // esperar a soltar
            __delay_ms(10);           // anti-rebote
        }
    }
}