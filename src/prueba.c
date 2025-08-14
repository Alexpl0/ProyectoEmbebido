#include <xc.h>

// Configuración del PIC16F877A (ajustes críticos)
#pragma config FOSC = HS        // Oscilador externo (HS, XT o INTOSC)
#pragma config WDTE = OFF       // Watchdog desactivado
#pragma config PWRTE = OFF      // Power-up Timer OFF
#pragma config BOREN = OFF      // Brown-out Reset OFF
#pragma config LVP = OFF        // Low-Voltage Programming OFF
#pragma config CPD = OFF        // Protección de datos OFF
#pragma config WRT = OFF        // Protección de escritura OFF
#pragma config CP = OFF         // Protección de código OFF

#define _XTAL_FREQ 20000000      // Frecuencia del oscilador (4 MHz)

void main() {
    TRISD = 0x00;   // Todos los pines de PORTD como salidas
    PORTD = 0x00;   // Inicializar PORTD en 0
    
    // Configurar pines analógicos como digitales (crucial en PIC16F877A)
    ADCON1 = 0x06;  // Todos los pines ANx como digitales

    // Encender todos los LEDs conectados a RD0-RD7
    PORTD = 0xFF;

    while(1) {
        // Bucle infinito
    }
}