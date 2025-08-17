subtitle "Microchip MPLAB XC8 C Compiler v3.00 (Free license) build 20241204225717 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 52 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 59 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 66 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 73 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 159 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 166 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 216 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 278 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 340 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 402 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 434 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 454 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 532 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 594 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 634 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 641 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 648 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 655 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 730 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 737 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 808 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 815 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 885 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 892 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 899 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 906 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 964 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1059 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1066 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1073 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1080 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1087 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1094 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1152 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1159 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1255 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1325 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1375 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1437 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1499 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1561 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1618 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1680 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1720 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1754 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1816 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1823 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1830 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1999 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2080 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2087 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2157 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2222 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2229 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2288 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2295 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2302 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2309 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2316 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2361 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 52 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 59 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 66 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 73 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 159 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 166 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 216 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 278 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 340 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 402 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 434 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 454 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 532 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 594 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 634 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 641 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 648 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 655 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 730 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 737 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 808 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 815 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 885 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 892 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 899 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 906 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 964 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1059 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1066 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1073 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1080 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1087 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1094 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1152 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1159 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1255 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1325 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1375 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1437 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1499 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1561 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1618 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1680 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1720 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1754 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1816 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1823 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1830 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1999 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2080 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2087 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2157 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2222 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2229 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2288 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2295 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2302 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2309 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2316 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2361 "C:\Program Files\Microchip\xc8\v3.00\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_Button_Init
	FNCALL	_main,_Check_Temperature_Alarm
	FNCALL	_main,_Move_Servo
	FNCALL	_main,_Read_Temperature
	FNCALL	_main,_Servo_Init
	FNCALL	_main,_Toggle_Lock_State
	FNCALL	_main,_UART_Init
	FNCALL	_main,_UART_Write_String
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,_vfprintf
	FNCALL	_vfprintf,_vfpfcnvrt
	FNCALL	_vfpfcnvrt,_efgtoa
	FNCALL	_vfpfcnvrt,_fputc
	FNCALL	_vfpfcnvrt,_read_prec_or_width
	FNCALL	_read_prec_or_width,___wmul
	FNCALL	_efgtoa,___fladd
	FNCALL	_efgtoa,___fldiv
	FNCALL	_efgtoa,___fleq
	FNCALL	_efgtoa,___flge
	FNCALL	_efgtoa,___flmul
	FNCALL	_efgtoa,___flneg
	FNCALL	_efgtoa,___flsub
	FNCALL	_efgtoa,___fltol
	FNCALL	_efgtoa,___fpclassifyf
	FNCALL	_efgtoa,_floorf
	FNCALL	_efgtoa,_labs
	FNCALL	_efgtoa,_memcpy
	FNCALL	_efgtoa,_pad
	FNCALL	_efgtoa,_strcpy
	FNCALL	_pad,_fputc
	FNCALL	_pad,_fputs
	FNCALL	_fputs,_fputc
	FNCALL	_fputc,_putch
	FNCALL	___flsub,___fladd
	FNCALL	_UART_Write_String,_UART_Write
	FNCALL	_Read_Temperature,___fldiv
	FNCALL	_Read_Temperature,___flmul
	FNCALL	_Read_Temperature,___xxtofl
	FNCALL	___flmul,__Umul8_16
	FNCALL	_Move_Servo,_Servo_MoveTo0
	FNCALL	_Move_Servo,_Servo_MoveTo180
	FNCALL	_Check_Temperature_Alarm,___flge
	FNROOT	_main
	FNCALL	_ISR,i1_UART_Write_String
	FNCALL	i1_UART_Write_String,i1_UART_Write
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_servo_needs_update
psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	file	"./src/main.c"
	line	34

;initializer for _servo_needs_update
	retlw	01h
	global	_width
	global	_prec
	global	_bluetoothData
	global	_flags
	global	_dbuf
	global	floorf@F521
	global	___fpclassifyf@F465
	global	_temperature
	global	_ledBlinkCounter
	global	_fireAlarm
	global	_currentState
	global	_PORTD
_PORTD	set	0x8
	global	_PORTB
_PORTB	set	0x6
	global	_RCREG
_RCREG	set	0x1A
	global	_ADRESH
_ADRESH	set	0x1E
	global	_ADCON0
_ADCON0	set	0x1F
	global	_TXREG
_TXREG	set	0x19
	global	_RCSTA
_RCSTA	set	0x18
	global	_RD1
_RD1	set	0x41
	global	_RD0
_RD0	set	0x40
	global	_RB0
_RB0	set	0x30
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RCIF
_RCIF	set	0x65
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_RC2
_RC2	set	0x3A
	global	_GO_nDONE
_GO_nDONE	set	0xFA
	global	_TXIF
_TXIF	set	0x64
	global	_TRISD
_TRISD	set	0x88
	global	_TRISB
_TRISB	set	0x86
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_ADRESL
_ADRESL	set	0x9E
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TXSTA
_TXSTA	set	0x98
	global	_SPBRG
_SPBRG	set	0x99
	global	_RCIE
_RCIE	set	0x465
	global	_TRISC2
_TRISC2	set	0x43A
	global	_TRISB0
_TRISB0	set	0x430
	global	_TRISA0
_TRISA0	set	0x428
	global	_TRISC6
_TRISC6	set	0x43E
	global	_TRISC7
_TRISC7	set	0x43F
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	
STR_4:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	118	;'v'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	10
	retlw	0
psect	strings
	
STR_5:	
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	61	;'='
	retlw	65	;'A'
	retlw	98	;'b'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	114	;'r'
	retlw	44	;','
	retlw	32	;' '
	retlw	67	;'C'
	retlw	61	;'='
	retlw	67	;'C'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	10
	retlw	0
psect	strings
	
STR_3:	
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	32	;' '
	retlw	83	;'S'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	61	;'='
	retlw	61	;'='
	retlw	61	;'='
	retlw	10
	retlw	0
psect	strings
	
STR_6:	
	retlw	66	;'B'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	10
	retlw	0
psect	strings
	
STR_2:	
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	58	;':'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	10
	retlw	0
psect	strings
	
STR_1:	
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	58	;':'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	66	;'B'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	82	;'R'
	retlw	10
	retlw	0
psect	strings
	
STR_9:	
	retlw	84	;'T'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	46	;'.'
	retlw	49	;'1'
	retlw	102	;'f'
	retlw	10
	retlw	0
psect	strings
	
STR_11:	
	retlw	70	;'F'
	retlw	58	;':'
	retlw	48	;'0'
	retlw	10
	retlw	0
psect	strings
	
STR_10:	
	retlw	70	;'F'
	retlw	58	;':'
	retlw	49	;'1'
	retlw	10
	retlw	0
psect	strings
	
STR_7:	
	retlw	83	;'S'
	retlw	58	;':'
	retlw	65	;'A'
	retlw	10
	retlw	0
psect	strings
	
STR_8:	
	retlw	83	;'S'
	retlw	58	;':'
	retlw	67	;'C'
	retlw	10
	retlw	0
psect	strings
	
STR_12:	
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_15:	
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	0
psect	strings
STR_16	equ	STR_15+0
STR_17	equ	STR_15+0
STR_13	equ	STR_12+0
STR_14	equ	STR_12+0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "ON"
	config BOREN = "ON"
	config LVP = "OFF"
	config CPD = "OFF"
	config WRT = "OFF"
	config CP = "OFF"
	file	"build\main.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_width:
       ds      2

_prec:
       ds      2

_bluetoothData:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_flags:
       ds      1

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
floorf@F521:
       ds      4

___fpclassifyf@F465:
       ds      4

_temperature:
       ds      4

_ledBlinkCounter:
       ds      1

_fireAlarm:
       ds      1

_currentState:
       ds      1

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"./src/main.c"
	line	34
_servo_needs_update:
       ds      1

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_dbuf:
       ds      80

	file	"build\main.s"
	line	#
; Initialize objects allocated to BANK3
	global __pidataBANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	fcall	__pidataBANK3+0		;fetch initializer
	movwf	__pdataBANK3+0&07fh		
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+0Fh)
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK2)
	movwf	fsr
	movlw	low((__pbssBANK2)+050h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	sprintf@s
sprintf@s:	; 1 bytes @ 0x0
	ds	1
	global	sprintf@fmt
sprintf@fmt:	; 1 bytes @ 0x1
	ds	5
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x6
	ds	1
	global	sprintf@f
sprintf@f:	; 11 bytes @ 0x7
	ds	11
??_main:	; 1 bytes @ 0x12
	ds	3
	global	main@tempStr
main@tempStr:	; 20 bytes @ 0x15
	ds	20
	global	main@temp_counter
main@temp_counter:	; 2 bytes @ 0x29
	ds	2
	global	main@bt_counter
main@bt_counter:	; 2 bytes @ 0x2B
	ds	2
	global	main@button_pressed
main@button_pressed:	; 1 bytes @ 0x2D
	ds	1
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	floorf@m
floorf@m:	; 4 bytes @ 0x0
	ds	4
	global	floorf@e
floorf@e:	; 2 bytes @ 0x4
	ds	2
	global	floorf@u
floorf@u:	; 4 bytes @ 0x6
	ds	4
?_efgtoa:	; 1 bytes @ 0xA
	global	efgtoa@fp
efgtoa@fp:	; 2 bytes @ 0xA
	ds	2
	global	efgtoa@f
efgtoa@f:	; 4 bytes @ 0xC
	ds	4
	global	efgtoa@c
efgtoa@c:	; 1 bytes @ 0x10
	ds	1
	global	efgtoa@ne
efgtoa@ne:	; 2 bytes @ 0x11
	ds	2
	global	efgtoa@p
efgtoa@p:	; 2 bytes @ 0x13
	ds	2
	global	efgtoa@t
efgtoa@t:	; 2 bytes @ 0x15
	ds	2
	global	_efgtoa$726
_efgtoa$726:	; 2 bytes @ 0x17
	ds	2
	global	efgtoa@pp
efgtoa@pp:	; 1 bytes @ 0x19
	ds	1
	global	efgtoa@mode
efgtoa@mode:	; 1 bytes @ 0x1A
	ds	1
	global	efgtoa@nmode
efgtoa@nmode:	; 1 bytes @ 0x1B
	ds	1
	global	efgtoa@d
efgtoa@d:	; 2 bytes @ 0x1C
	ds	2
	global	efgtoa@m
efgtoa@m:	; 2 bytes @ 0x1E
	ds	2
	global	efgtoa@e
efgtoa@e:	; 2 bytes @ 0x20
	ds	2
	global	efgtoa@w
efgtoa@w:	; 2 bytes @ 0x22
	ds	2
	global	efgtoa@ou
efgtoa@ou:	; 4 bytes @ 0x24
	ds	4
	global	efgtoa@i
efgtoa@i:	; 2 bytes @ 0x28
	ds	2
	global	efgtoa@h
efgtoa@h:	; 4 bytes @ 0x2A
	ds	4
	global	efgtoa@l
efgtoa@l:	; 4 bytes @ 0x2E
	ds	4
	global	efgtoa@sign
efgtoa@sign:	; 1 bytes @ 0x32
	ds	1
	global	efgtoa@g
efgtoa@g:	; 4 bytes @ 0x33
	ds	4
	global	efgtoa@n
efgtoa@n:	; 2 bytes @ 0x37
	ds	2
	global	efgtoa@u
efgtoa@u:	; 4 bytes @ 0x39
	ds	4
?_vfpfcnvrt:	; 1 bytes @ 0x3D
	global	vfpfcnvrt@fp
vfpfcnvrt@fp:	; 2 bytes @ 0x3D
	ds	2
	global	vfpfcnvrt@fmt
vfpfcnvrt@fmt:	; 1 bytes @ 0x3F
	ds	1
	global	vfpfcnvrt@ap
vfpfcnvrt@ap:	; 1 bytes @ 0x40
	ds	1
??_vfpfcnvrt:	; 1 bytes @ 0x41
	ds	2
	global	vfpfcnvrt@convarg
vfpfcnvrt@convarg:	; 4 bytes @ 0x43
	ds	4
	global	vfpfcnvrt@c
vfpfcnvrt@c:	; 1 bytes @ 0x47
	ds	1
	global	vfpfcnvrt@cp
vfpfcnvrt@cp:	; 1 bytes @ 0x48
	ds	1
	global	?_vfprintf
?_vfprintf:	; 2 bytes @ 0x49
	global	vfprintf@fp
vfprintf@fp:	; 2 bytes @ 0x49
	ds	2
	global	vfprintf@fmt
vfprintf@fmt:	; 1 bytes @ 0x4B
	ds	1
	global	vfprintf@ap
vfprintf@ap:	; 1 bytes @ 0x4C
	ds	1
	global	vfprintf@cfmt
vfprintf@cfmt:	; 1 bytes @ 0x4D
	ds	1
??_sprintf:	; 1 bytes @ 0x4E
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_putch:	; 1 bytes @ 0x0
?_UART_Init:	; 1 bytes @ 0x0
?_UART_Write:	; 1 bytes @ 0x0
?_ADC_Init:	; 1 bytes @ 0x0
?_Servo_MoveTo0:	; 1 bytes @ 0x0
?_Servo_MoveTo180:	; 1 bytes @ 0x0
?_Move_Servo:	; 1 bytes @ 0x0
?_Button_Init:	; 1 bytes @ 0x0
?_Servo_Init:	; 1 bytes @ 0x0
?_Toggle_Lock_State:	; 1 bytes @ 0x0
?_Check_Temperature_Alarm:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?i1_UART_Write:	; 1 bytes @ 0x0
putch@c:	; 1 bytes @ 0x0
	global	i1UART_Write@data
i1UART_Write@data:	; 1 bytes @ 0x0
??i1_UART_Write:	; 1 bytes @ 0x0
	ds	1
?i1_UART_Write_String:	; 1 bytes @ 0x1
	global	i1UART_Write_String@str
i1UART_Write_String@str:	; 2 bytes @ 0x1
	ds	2
??_ISR:	; 1 bytes @ 0x3
??i1_UART_Write_String:	; 1 bytes @ 0x3
	ds	4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_strcpy:	; 1 bytes @ 0x0
?_memcpy:	; 1 bytes @ 0x0
?___fleq:	; 1 bit 
	global	?__Umul8_16
?__Umul8_16:	; 2 bytes @ 0x0
?_fputc:	; 2 bytes @ 0x0
	global	?___fpclassifyf
?___fpclassifyf:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?_labs
?_labs:	; 4 bytes @ 0x0
	global	?___flneg
?___flneg:	; 4 bytes @ 0x0
	global	?___fltol
?___fltol:	; 4 bytes @ 0x0
	global	?___fladd
?___fladd:	; 4 bytes @ 0x0
	global	?___xxtofl
?___xxtofl:	; 4 bytes @ 0x0
	global	UART_Write@data
UART_Write@data:	; 1 bytes @ 0x0
	global	__Umul8_16@multiplicand
__Umul8_16@multiplicand:	; 1 bytes @ 0x0
	global	memcpy@d1
memcpy@d1:	; 1 bytes @ 0x0
	global	strcpy@dest
strcpy@dest:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	fputc@c
fputc@c:	; 2 bytes @ 0x0
	global	___fleq@ff1
___fleq@ff1:	; 4 bytes @ 0x0
	global	___flneg@f1
___flneg@f1:	; 4 bytes @ 0x0
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x0
	global	___fladd@b
___fladd@b:	; 4 bytes @ 0x0
	global	___xxtofl@val
___xxtofl@val:	; 4 bytes @ 0x0
	global	___fpclassifyf@x
___fpclassifyf@x:	; 4 bytes @ 0x0
	global	labs@a
labs@a:	; 4 bytes @ 0x0
??_putch:	; 1 bytes @ 0x0
??_UART_Init:	; 1 bytes @ 0x0
??_UART_Write:	; 1 bytes @ 0x0
??_ADC_Init:	; 1 bytes @ 0x0
??_Servo_MoveTo0:	; 1 bytes @ 0x0
??_Servo_MoveTo180:	; 1 bytes @ 0x0
??_Button_Init:	; 1 bytes @ 0x0
??_Servo_Init:	; 1 bytes @ 0x0
??_Toggle_Lock_State:	; 1 bytes @ 0x0
	ds	1
?_UART_Write_String:	; 1 bytes @ 0x1
	global	memcpy@s1
memcpy@s1:	; 1 bytes @ 0x1
	global	strcpy@src
strcpy@src:	; 1 bytes @ 0x1
	global	UART_Write_String@str
UART_Write_String@str:	; 2 bytes @ 0x1
	ds	1
	global	strcpy@d
strcpy@d:	; 1 bytes @ 0x2
	global	Servo_MoveTo0@i
Servo_MoveTo0@i:	; 2 bytes @ 0x2
	global	Servo_MoveTo180@i
Servo_MoveTo180@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x2
	global	fputc@fp
fputc@fp:	; 2 bytes @ 0x2
??__Umul8_16:	; 1 bytes @ 0x2
??_strcpy:	; 1 bytes @ 0x2
	ds	1
??_UART_Write_String:	; 1 bytes @ 0x3
	ds	1
	global	Move_Servo@state
Move_Servo@state:	; 1 bytes @ 0x4
	global	memcpy@tmp
memcpy@tmp:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	__Umul8_16@product
__Umul8_16@product:	; 2 bytes @ 0x4
	global	___fleq@ff2
___fleq@ff2:	; 4 bytes @ 0x4
	global	___fladd@a
___fladd@a:	; 4 bytes @ 0x4
??_fputc:	; 1 bytes @ 0x4
??___fpclassifyf:	; 1 bytes @ 0x4
??_labs:	; 1 bytes @ 0x4
??_memcpy:	; 1 bytes @ 0x4
??_Move_Servo:	; 1 bytes @ 0x4
??___wmul:	; 1 bytes @ 0x4
??___flneg:	; 1 bytes @ 0x4
??___fltol:	; 1 bytes @ 0x4
??___xxtofl:	; 1 bytes @ 0x4
	ds	1
	global	memcpy@d
memcpy@d:	; 1 bytes @ 0x5
	ds	1
	global	?_read_prec_or_width
?_read_prec_or_width:	; 2 bytes @ 0x6
	global	read_prec_or_width@fmt
read_prec_or_width@fmt:	; 1 bytes @ 0x6
	global	memcpy@s
memcpy@s:	; 1 bytes @ 0x6
	global	__Umul8_16@word_mpld
__Umul8_16@word_mpld:	; 2 bytes @ 0x6
	ds	1
	global	read_prec_or_width@ap
read_prec_or_width@ap:	; 1 bytes @ 0x7
	ds	1
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0x8
	global	__Umul8_16@multiplier
__Umul8_16@multiplier:	; 1 bytes @ 0x8
	global	___xxtofl@sign
___xxtofl@sign:	; 1 bytes @ 0x8
	global	read_prec_or_width@c
read_prec_or_width@c:	; 1 bytes @ 0x8
??___fleq:	; 1 bytes @ 0x8
??___fladd:	; 1 bytes @ 0x8
??_read_prec_or_width:	; 1 bytes @ 0x8
	ds	1
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0x9
	global	___xxtofl@exp
___xxtofl@exp:	; 1 bytes @ 0x9
	global	read_prec_or_width@n
read_prec_or_width@n:	; 2 bytes @ 0x9
	ds	1
	global	___fpclassifyf@e
___fpclassifyf@e:	; 2 bytes @ 0xA
	global	___xxtofl@arg
___xxtofl@arg:	; 4 bytes @ 0xA
	ds	2
	global	___fpclassifyf@u
___fpclassifyf@u:	; 4 bytes @ 0xC
	ds	1
?_fputs:	; 2 bytes @ 0xD
	global	fputs@s
fputs@s:	; 1 bytes @ 0xD
	ds	1
	global	?___flmul
?___flmul:	; 4 bytes @ 0xE
	global	fputs@fp
fputs@fp:	; 2 bytes @ 0xE
	global	___flmul@b
___flmul@b:	; 4 bytes @ 0xE
	ds	2
	global	___fladd@signs
___fladd@signs:	; 1 bytes @ 0x10
??_fputs:	; 1 bytes @ 0x10
	ds	1
	global	___fladd@aexp
___fladd@aexp:	; 1 bytes @ 0x11
	ds	1
	global	___fladd@bexp
___fladd@bexp:	; 1 bytes @ 0x12
	global	fputs@c
fputs@c:	; 1 bytes @ 0x12
	global	___flmul@a
___flmul@a:	; 4 bytes @ 0x12
	ds	1
	global	___fladd@grs
___fladd@grs:	; 1 bytes @ 0x13
	global	fputs@i
fputs@i:	; 2 bytes @ 0x13
	ds	2
?_pad:	; 1 bytes @ 0x15
	global	pad@fp
pad@fp:	; 2 bytes @ 0x15
	ds	1
??___flmul:	; 1 bytes @ 0x16
	ds	1
	global	pad@buf
pad@buf:	; 1 bytes @ 0x17
	ds	1
	global	pad@p
pad@p:	; 2 bytes @ 0x18
	ds	2
??_pad:	; 1 bytes @ 0x1A
	ds	1
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x1B
	global	pad@i
pad@i:	; 2 bytes @ 0x1B
	ds	1
	global	___flmul@grs
___flmul@grs:	; 4 bytes @ 0x1C
	ds	4
	global	___flmul@aexp
___flmul@aexp:	; 1 bytes @ 0x20
	ds	1
	global	___flmul@bexp
___flmul@bexp:	; 1 bytes @ 0x21
	ds	1
	global	___flmul@prod
___flmul@prod:	; 4 bytes @ 0x22
	ds	4
	global	___flmul@temp
___flmul@temp:	; 2 bytes @ 0x26
	ds	2
?___flge:	; 1 bit 
	global	?___flsub
?___flsub:	; 4 bytes @ 0x28
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0x28
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x28
	global	___flsub@a
___flsub@a:	; 4 bytes @ 0x28
	global	___fldiv@a
___fldiv@a:	; 4 bytes @ 0x28
	ds	4
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0x2C
	global	___flsub@b
___flsub@b:	; 4 bytes @ 0x2C
	global	___fldiv@b
___fldiv@b:	; 4 bytes @ 0x2C
	ds	4
??___flge:	; 1 bytes @ 0x30
??___flsub:	; 1 bytes @ 0x30
??___fldiv:	; 1 bytes @ 0x30
	ds	4
??_Check_Temperature_Alarm:	; 1 bytes @ 0x34
	ds	1
	global	___fldiv@rem
___fldiv@rem:	; 4 bytes @ 0x35
	ds	4
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x39
	ds	1
	global	___fldiv@new_exp
___fldiv@new_exp:	; 2 bytes @ 0x3A
	ds	2
	global	___fldiv@grs
___fldiv@grs:	; 4 bytes @ 0x3C
	ds	4
	global	___fldiv@bexp
___fldiv@bexp:	; 1 bytes @ 0x40
	ds	1
	global	___fldiv@aexp
___fldiv@aexp:	; 1 bytes @ 0x41
	ds	1
	global	?_floorf
?_floorf:	; 4 bytes @ 0x42
	global	?_Read_Temperature
?_Read_Temperature:	; 4 bytes @ 0x42
	global	floorf@x
floorf@x:	; 4 bytes @ 0x42
	ds	4
??_floorf:	; 1 bytes @ 0x46
??_Read_Temperature:	; 1 bytes @ 0x46
	ds	2
	global	_Read_Temperature$1034
_Read_Temperature$1034:	; 4 bytes @ 0x48
	ds	4
	global	Read_Temperature@adcValue
Read_Temperature@adcValue:	; 2 bytes @ 0x4C
??_efgtoa:	; 1 bytes @ 0x4C
	ds	4
??_vfprintf:	; 1 bytes @ 0x50
;!
;!Data Sizes:
;!    Strings     175
;!    Constant    0
;!    Data        1
;!    BSS         101
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      12
;!    BANK0            80     80      80
;!    BANK1            80     79      80
;!    BANK3            96     46      62
;!    BANK2            96      0      80

;!
;!Pointer List with Targets:
;!
;!    efgtoa@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK3[11]), 
;!
;!    f$.$buffer	PTR unsigned char  size(2) Largest target is 20
;!		 -> main@tempStr(BANK3[20]), 
;!
;!    f$.$source	PTR const unsigned char  size(1) Largest target is 0
;!
;!    fputc@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK3[11]), 
;!
;!    fputc@fp$.$buffer	PTR unsigned char  size(2) Largest target is 20
;!		 -> main@tempStr(BANK3[20]), 
;!
;!    fputc@fp$.$source	PTR const unsigned char  size(1) Largest target is 0
;!
;!    fputs@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK3[11]), 
;!
;!    fputs@s	PTR const unsigned char  size(1) Largest target is 80
;!		 -> dbuf(BANK2[80]), 
;!
;!    memcpy@d	PTR unsigned char  size(1) Largest target is 80
;!		 -> dbuf(BANK2[80]), 
;!
;!    memcpy@d1	PTR void  size(1) Largest target is 80
;!		 -> dbuf(BANK2[80]), 
;!
;!    memcpy@s	PTR const unsigned char  size(1) Largest target is 80
;!		 -> dbuf(BANK2[80]), 
;!
;!    memcpy@s1	PTR const void  size(1) Largest target is 80
;!		 -> dbuf(BANK2[80]), 
;!
;!    pad@buf	PTR unsigned char  size(1) Largest target is 80
;!		 -> dbuf(BANK2[80]), 
;!
;!    pad@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK3[11]), 
;!
;!    read_prec_or_width@ap	PTR PTR void [1] size(1) Largest target is 1
;!		 -> sprintf@ap(BANK3[1]), 
;!
;!    read_prec_or_width@fmt	PTR PTR const unsigned char  size(1) Largest target is 1
;!		 -> vfprintf@cfmt(BANK1[1]), 
;!
;!    S601$buffer	PTR unsigned char  size(2) Largest target is 20
;!		 -> main@tempStr(BANK3[20]), 
;!
;!    S601$source	PTR const unsigned char  size(1) Largest target is 0
;!
;!    sp__memcpy	PTR void  size(1) Largest target is 80
;!		 -> dbuf(BANK2[80]), 
;!
;!    sp__strcpy	PTR unsigned char  size(1) Largest target is 80
;!		 -> dbuf(BANK2[80]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK3[2]), 
;!
;!    sprintf@fmt	PTR const unsigned char  size(1) Largest target is 8
;!		 -> STR_9(CODE[8]), 
;!
;!    sprintf@s	PTR unsigned char  size(1) Largest target is 20
;!		 -> main@tempStr(BANK3[20]), 
;!
;!    strcpy@d	PTR unsigned char  size(1) Largest target is 80
;!		 -> dbuf(BANK2[80]), 
;!
;!    strcpy@dest	PTR unsigned char  size(1) Largest target is 80
;!		 -> dbuf(BANK2[80]), 
;!
;!    strcpy@src	PTR const unsigned char  size(1) Largest target is 4
;!		 -> STR_12(CODE[4]), STR_15(CODE[4]), 
;!
;!    UART_Write_String@str	PTR const unsigned char  size(2) Largest target is 33
;!		 -> main@tempStr(BANK3[20]), STR_1(CODE[16]), STR_10(CODE[5]), STR_11(CODE[5]), 
;!		 -> STR_2(CODE[17]), STR_3(CODE[26]), STR_4(CODE[33]), STR_5(CODE[29]), 
;!		 -> STR_6(CODE[18]), STR_7(CODE[5]), STR_8(CODE[5]), 
;!
;!    vfpfcnvrt@ap	PTR PTR void  size(1) Largest target is 1
;!		 -> sprintf@ap(BANK3[1]), 
;!
;!    vfpfcnvrt@cp	PTR unsigned char  size(1) Largest target is 8
;!		 -> STR_9(CODE[8]), 
;!
;!    vfpfcnvrt@fmt	PTR PTR unsigned char  size(1) Largest target is 1
;!		 -> vfprintf@cfmt(BANK1[1]), 
;!
;!    vfpfcnvrt@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK3[11]), 
;!
;!    vfprintf@ap	PTR PTR void  size(1) Largest target is 1
;!		 -> sprintf@ap(BANK3[1]), 
;!
;!    vfprintf@cfmt	PTR unsigned char  size(1) Largest target is 8
;!		 -> STR_9(CODE[8]), 
;!
;!    vfprintf@fmt	PTR const unsigned char  size(1) Largest target is 8
;!		 -> STR_9(CODE[8]), 
;!
;!    vfprintf@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK3[11]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->i1_UART_Write_String
;!    i1_UART_Write_String->i1_UART_Write
;!
;!Critical Paths under _main in BANK0
;!
;!    _vfpfcnvrt->_efgtoa
;!    _read_prec_or_width->___wmul
;!    _efgtoa->_floorf
;!    _pad->_fputs
;!    _fputs->_fputc
;!    _floorf->___fldiv
;!    ___flsub->___flmul
;!    _UART_Write_String->_UART_Write
;!    _Read_Temperature->___fldiv
;!    ___flmul->___xxtofl
;!    ___fldiv->___flmul
;!    _Move_Servo->_Servo_MoveTo0
;!    _Move_Servo->_Servo_MoveTo180
;!    _Check_Temperature_Alarm->___flge
;!    ___flge->___flmul
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_sprintf
;!    _sprintf->_vfprintf
;!    _vfprintf->_vfpfcnvrt
;!    _vfpfcnvrt->_efgtoa
;!    _efgtoa->_floorf
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    _main->_sprintf
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                28    28      0   18467
;!                                             18 BANK3     28    28      0
;!                           _ADC_Init
;!                        _Button_Init
;!            _Check_Temperature_Alarm
;!                         _Move_Servo
;!                   _Read_Temperature
;!                         _Servo_Init
;!                  _Toggle_Lock_State
;!                          _UART_Init
;!                  _UART_Write_String
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             21    15      6   14650
;!                                             78 BANK1      1     1      0
;!                                              0 BANK3     18    12      6
;!                           _vfprintf
;! ---------------------------------------------------------------------------------
;! (2) _vfprintf                                             5     1      4   14326
;!                                             73 BANK1      5     1      4
;!                          _vfpfcnvrt
;! ---------------------------------------------------------------------------------
;! (3) _vfpfcnvrt                                           13     9      4   14099
;!                                             61 BANK1     12     8      4
;!                             _efgtoa
;!                              _fputc
;!                 _read_prec_or_width
;! ---------------------------------------------------------------------------------
;! (4) _read_prec_or_width                                   5     3      2     408
;!                                              6 BANK0      5     3      2
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (5) ___wmul                                               6     2      4     142
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (4) _efgtoa                                              56    49      7   12613
;!                                             76 BANK0      4     4      0
;!                                             10 BANK1     51    44      7
;!                            ___fladd
;!                            ___fldiv
;!                             ___fleq
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___flsub
;!                            ___fltol
;!                      ___fpclassifyf
;!                             _floorf
;!                               _labs
;!                             _memcpy
;!                                _pad
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (5) _strcpy                                               3     1      2     115
;!                                              0 BANK0      3     1      2
;! ---------------------------------------------------------------------------------
;! (5) _pad                                                  8     3      5    1038
;!                                             21 BANK0      8     3      5
;!                              _fputc
;!                              _fputs
;! ---------------------------------------------------------------------------------
;! (6) _fputs                                                8     5      3     481
;!                                             13 BANK0      8     5      3
;!                              _fputc
;! ---------------------------------------------------------------------------------
;! (4) _fputc                                               13     9      4     335
;!                                              0 BANK0     13     9      4
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (5) _putch                                                1     1      0       0
;! ---------------------------------------------------------------------------------
;! (5) _memcpy                                               7     3      4     217
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (5) _labs                                                 4     0      4     102
;!                                              0 BANK0      4     0      4
;! ---------------------------------------------------------------------------------
;! (5) _floorf                                              20    16      4     340
;!                                             66 BANK0     10     6      4
;!                                              0 BANK1     10    10      0
;!                            ___fldiv (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___fpclassifyf                                       16    12      4     137
;!                                              0 BANK0     16    12      4
;! ---------------------------------------------------------------------------------
;! (5) ___fltol                                             10     6      4     232
;!                                              0 BANK0     10     6      4
;! ---------------------------------------------------------------------------------
;! (5) ___flsub                                              8     0      8    2067
;!                                             40 BANK0      8     0      8
;!                            ___fladd
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___fladd                                             20    12      8    1990
;!                                              0 BANK0     20    12      8
;! ---------------------------------------------------------------------------------
;! (5) ___flneg                                              4     0      4      68
;!                                              0 BANK0      4     0      4
;! ---------------------------------------------------------------------------------
;! (5) ___fleq                                              12     4      8      94
;!                                              0 BANK0     12     4      8
;! ---------------------------------------------------------------------------------
;! (1) _UART_Write_String                                    2     0      2     139
;!                                              1 BANK0      2     0      2
;!                         _UART_Write
;! ---------------------------------------------------------------------------------
;! (2) _UART_Write                                           1     1      0      47
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _UART_Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Toggle_Lock_State                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Servo_Init                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Read_Temperature                                    12     8      4    3139
;!                                             66 BANK0     12     8      4
;!                            ___fldiv
;!                            ___flmul
;!                           ___xxtofl
;! ---------------------------------------------------------------------------------
;! (2) ___xxtofl                                            14    10      4     337
;!                                              0 BANK0     14    10      4
;! ---------------------------------------------------------------------------------
;! (5) ___flmul                                             26    18      8    1622
;!                                             14 BANK0     26    18      8
;!                          __Umul8_16
;!                           ___xxtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (6) __Umul8_16                                            9     7      2     139
;!                                              0 BANK0      9     7      2
;! ---------------------------------------------------------------------------------
;! (5) ___fldiv                                             26    18      8    1134
;!                                             40 BANK0     26    18      8
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _Move_Servo                                           1     1      0     139
;!                                              4 BANK0      1     1      0
;!                      _Servo_MoveTo0
;!                    _Servo_MoveTo180
;! ---------------------------------------------------------------------------------
;! (2) _Servo_MoveTo180                                      4     4      0      46
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (2) _Servo_MoveTo0                                        4     4      0      46
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _Check_Temperature_Alarm                              0     0      0     194
;!                             ___flge
;! ---------------------------------------------------------------------------------
;! (5) ___flge                                              12     4      8     194
;!                                             40 BANK0     12     4      8
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _Button_Init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (9) _ISR                                                  4     4      0      76
;!                                              3 COMMON     4     4      0
;!                i1_UART_Write_String
;! ---------------------------------------------------------------------------------
;! (10) i1_UART_Write_String                                 2     0      2      76
;!                                              1 COMMON     2     0      2
;!                       i1_UART_Write
;! ---------------------------------------------------------------------------------
;! (11) i1_UART_Write                                        1     1      0      29
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 11
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_Init
;!   _Button_Init
;!   _Check_Temperature_Alarm
;!     ___flge
;!       ___flmul (ARG)
;!         __Umul8_16
;!         ___xxtofl (ARG)
;!   _Move_Servo
;!     _Servo_MoveTo0
;!     _Servo_MoveTo180
;!   _Read_Temperature
;!     ___fldiv
;!       ___flmul (ARG)
;!     ___flmul
;!     ___xxtofl
;!   _Servo_Init
;!   _Toggle_Lock_State
;!   _UART_Init
;!   _UART_Write_String
;!     _UART_Write
;!   _sprintf
;!     _vfprintf
;!       _vfpfcnvrt
;!         _efgtoa
;!           ___fladd
;!           ___fldiv
;!           ___fleq
;!           ___flge
;!           ___flmul
;!           ___flneg
;!           ___flsub
;!             ___fladd
;!             ___flmul (ARG)
;!           ___fltol
;!           ___fpclassifyf
;!           _floorf
;!             ___fldiv (ARG)
;!           _labs
;!           _memcpy
;!           _pad
;!             _fputc
;!               _putch
;!             _fputs
;!               _fputc
;!           _strcpy
;!         _fputc
;!         _read_prec_or_width
;!           ___wmul
;!
;! _ISR (ROOT)
;!   i1_UART_Write_String
;!     i1_UART_Write
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BANK3               96     46      62     64.6%
;!BITBANK3            96      0       0      0.0%
;!BANK2               96      0      80     83.3%
;!BITBANK2            96      0       0      0.0%
;!BANK1               80     79      80    100.0%
;!BITBANK1            80      0       0      0.0%
;!BANK0               80     80      80    100.0%
;!BITBANK0            80      0       0      0.0%
;!COMMON              14      7      12     85.7%
;!BITCOMMON           14      0       0      0.0%
;!DATA                 0      0     314      0.0%
;!STACK                0      0       0      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 173 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempStr        20   21[BANK3 ] unsigned char [20]
;;  bt_counter      2   43[BANK3 ] unsigned int 
;;  temp_counter    2   41[BANK3 ] unsigned int 
;;  button_press    1   45[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0      25       0
;;      Temps:          0       0       0       3       0
;;      Totals:         0       0       0      28       0
;;Total ram usage:       28 bytes
;; Hardware stack levels required when called: 11
;; This function calls:
;;		_ADC_Init
;;		_Button_Init
;;		_Check_Temperature_Alarm
;;		_Move_Servo
;;		_Read_Temperature
;;		_Servo_Init
;;		_Toggle_Lock_State
;;		_UART_Init
;;		_UART_Write_String
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"./src/main.c"
	line	173
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"./src/main.c"
	line	173
	
_main:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	177
	
l3900:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	178
	
l3902:	
	clrf	(136)^080h	;volatile
	line	179
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	180
	clrf	(8)	;volatile
	line	183
	
l3904:	
	fcall	_Servo_Init
	line	184
	
l3906:	
	fcall	_ADC_Init
	line	185
	
l3908:	
	fcall	_UART_Init
	line	186
	
l3910:	
	fcall	_Button_Init
	line	189
	
l3912:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	190
	
l3914:	
	bsf	(92/8),(92)&7	;volatile
	line	191
	
l3916:	
	bsf	(94/8),(94)&7	;volatile
	line	192
	
l3918:	
	bsf	(95/8),(95)&7	;volatile
	line	195
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_currentState)^0180h
	line	196
	
l3920:	
	movf	(_currentState)^0180h,w
	fcall	_Move_Servo
	line	199
	
l3922:	
	movlw	(low((((STR_3)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UART_Write_String@str)
	movlw	80h
	movwf	(UART_Write_String@str+1)
	fcall	_UART_Write_String
	line	200
	
l3924:	
	movlw	(low((((STR_4)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UART_Write_String@str)
	movlw	80h
	movwf	(UART_Write_String@str+1)
	fcall	_UART_Write_String
	line	201
	
l3926:	
	movlw	(low((((STR_5)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UART_Write_String@str)
	movlw	80h
	movwf	(UART_Write_String@str+1)
	fcall	_UART_Write_String
	line	204
	
l3928:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@temp_counter)^0180h
	clrf	(main@temp_counter+1)^0180h
	line	205
	
l3930:	
	clrf	(main@bt_counter)^0180h
	clrf	(main@bt_counter+1)^0180h
	line	206
	
l3932:	
	clrf	(main@button_pressed)^0180h
	line	211
	
l3934:	
	btfss	(89/8),(89)&7	;volatile
	goto	u5791
	goto	u5790
u5791:
	goto	l3956
u5790:
	
l3936:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((main@button_pressed)^0180h),w
	btfss	status,2
	goto	u5801
	goto	u5800
u5801:
	goto	l3956
u5800:
	line	212
	
l3938:	
	asmopt push
asmopt off
movlw  2
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+2)
movlw	69
movwf	((??_main+0)^0180h+0+1)
	movlw	169
movwf	((??_main+0)^0180h+0)
	u5957:
decfsz	((??_main+0)^0180h+0),f
	goto	u5957
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u5957
	decfsz	((??_main+0)^0180h+0+2),f
	goto	u5957
asmopt pop

	line	213
	
l3940:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7	;volatile
	goto	u5811
	goto	u5810
u5811:
	goto	l3954
u5810:
	line	214
	
l3942:	
	fcall	_Toggle_Lock_State
	line	215
	
l3944:	
	movlw	(low((((STR_6)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UART_Write_String@str)
	movlw	80h
	movwf	(UART_Write_String@str+1)
	fcall	_UART_Write_String
	line	216
	
l3946:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@button_pressed)^0180h
	line	219
	goto	l3950
	line	220
	
l3948:	
	asmopt push
asmopt off
movlw	65
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+1)
	movlw	237
movwf	((??_main+0)^0180h+0)
	u5967:
decfsz	((??_main+0)^0180h+0),f
	goto	u5967
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u5967
	nop2
asmopt pop

	line	219
	
l3950:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u5821
	goto	u5820
u5821:
	goto	l3948
u5820:
	line	222
	
l3952:	
	asmopt push
asmopt off
movlw  2
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+2)
movlw	69
movwf	((??_main+0)^0180h+0+1)
	movlw	169
movwf	((??_main+0)^0180h+0)
	u5977:
decfsz	((??_main+0)^0180h+0),f
	goto	u5977
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u5977
	decfsz	((??_main+0)^0180h+0+2),f
	goto	u5977
asmopt pop

	line	224
	
l3954:	
	bcf	(89/8),(89)&7	;volatile
	line	227
	
l3956:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u5831
	goto	u5830
u5831:
	goto	l3960
u5830:
	line	228
	
l3958:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@button_pressed)^0180h
	line	232
	
l3960:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((_servo_needs_update)^0180h),w	;volatile
	btfsc	status,2
	goto	u5841
	goto	u5840
u5841:
	goto	l3966
u5840:
	line	233
	
l3962:	
	movf	(_currentState)^0180h,w
	fcall	_Move_Servo
	line	234
	
l3964:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_servo_needs_update)^0180h	;volatile
	line	238
	
l3966:	
	movlw	01h
	addwf	(main@temp_counter)^0180h,f
	skipnc
	incf	(main@temp_counter+1)^0180h,f
	movlw	0
	addwf	(main@temp_counter+1)^0180h,f
	line	239
	
l3968:	
	movlw	03h
	subwf	(main@temp_counter+1)^0180h,w
	movlw	0E8h
	skipnz
	subwf	(main@temp_counter)^0180h,w
	skipc
	goto	u5851
	goto	u5850
u5851:
	goto	l3976
u5850:
	line	240
	
l3970:	
	fcall	_Read_Temperature
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?_Read_Temperature)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_temperature+3)^0180h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_Read_Temperature)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_temperature+2)^0180h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_Read_Temperature)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_temperature+1)^0180h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_Read_Temperature)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_temperature)^0180h	;volatile

	line	241
	
l3972:	
	fcall	_Check_Temperature_Alarm
	line	242
	
l3974:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@temp_counter)^0180h
	clrf	(main@temp_counter+1)^0180h
	line	246
	
l3976:	
	movf	((_fireAlarm)^0180h),w	;volatile
	btfsc	status,2
	goto	u5861
	goto	u5860
u5861:
	goto	l3988
u5860:
	line	248
	
l3978:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7	;volatile
	line	249
	
l3980:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(_ledBlinkCounter)^0180h,f	;volatile
	line	250
	
l3982:	
	movlw	low(065h)
	subwf	(_ledBlinkCounter)^0180h,w	;volatile
	skipc
	goto	u5871
	goto	u5870
u5871:
	goto	l3992
u5870:
	line	251
	
l3984:	
	movlw	1<<((65)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((65)/8),f
	line	252
	
l3986:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_ledBlinkCounter)^0180h	;volatile
	goto	l3992
	line	256
	
l3988:	
		decf	((_currentState)^0180h),w
	btfsc	status,2
	goto	u5881
	goto	u5880
	
u5881:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7	;volatile
	goto	u5894
u5880:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7	;volatile
u5894:
	line	257
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((_currentState)^0180h),w
	btfsc	status,2
	goto	u5901
	goto	u5900
	
u5901:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7	;volatile
	goto	u5914
u5900:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7	;volatile
u5914:
	goto	l3986
	line	262
	
l3992:	
	movlw	01h
	addwf	(main@bt_counter)^0180h,f
	skipnc
	incf	(main@bt_counter+1)^0180h,f
	movlw	0
	addwf	(main@bt_counter+1)^0180h,f
	line	263
	
l3994:	
	movlw	01h
	subwf	(main@bt_counter+1)^0180h,w
	movlw	0F4h
	skipnz
	subwf	(main@bt_counter)^0180h,w
	skipc
	goto	u5921
	goto	u5920
u5921:
	goto	l4010
u5920:
	line	265
	
l3996:	
		decf	((_currentState)^0180h),w
	btfss	status,2
	goto	u5931
	goto	u5930
u5931:
	goto	l4000
u5930:
	line	266
	
l3998:	
	movlw	(low((((STR_7)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UART_Write_String@str)
	movlw	80h
	movwf	(UART_Write_String@str+1)
	fcall	_UART_Write_String
	line	267
	goto	l166
	line	268
	
l4000:	
	movlw	(low((((STR_8)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UART_Write_String@str)
	movlw	80h
	movwf	(UART_Write_String@str+1)
	fcall	_UART_Write_String
	line	269
	
l166:	
	line	273
	movlw	(low(main@tempStr|((0x1)<<8)))&0ffh
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@s)^0180h
	movlw	(low((((STR_9)-__stringbase)|8000h)))&0ffh
	movwf	(sprintf@fmt)^0180h
	movf	(_temperature+3)^0180h,w	;volatile
	movwf	3+(?_sprintf)^0180h+02h
	movf	(_temperature+2)^0180h,w	;volatile
	movwf	2+(?_sprintf)^0180h+02h
	movf	(_temperature+1)^0180h,w	;volatile
	movwf	1+(?_sprintf)^0180h+02h
	movf	(_temperature)^0180h,w	;volatile
	movwf	0+(?_sprintf)^0180h+02h

	fcall	_sprintf
	line	274
	movlw	(low(main@tempStr|((0x1)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UART_Write_String@str)
	movlw	(0x1)
	movwf	(UART_Write_String@str+1)
	fcall	_UART_Write_String
	line	277
	
l4002:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((_fireAlarm)^0180h),w	;volatile
	btfsc	status,2
	goto	u5941
	goto	u5940
u5941:
	goto	l4006
u5940:
	line	278
	
l4004:	
	movlw	(low((((STR_10)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UART_Write_String@str)
	movlw	80h
	movwf	(UART_Write_String@str+1)
	fcall	_UART_Write_String
	line	279
	goto	l4008
	line	280
	
l4006:	
	movlw	(low((((STR_11)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UART_Write_String@str)
	movlw	80h
	movwf	(UART_Write_String@str+1)
	fcall	_UART_Write_String
	line	283
	
l4008:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@bt_counter)^0180h
	clrf	(main@bt_counter+1)^0180h
	line	287
	
l4010:	
	asmopt push
asmopt off
movlw	7
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+1)
	movlw	124
movwf	((??_main+0)^0180h+0)
	u5987:
decfsz	((??_main+0)^0180h+0),f
	goto	u5987
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u5987
	nop
asmopt pop

	goto	l3934
	global	start
	ljmp	start
	callstack 0
	line	289
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 9 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_sprintf.c"
;; Parameters:    Size  Location     Type
;;  s               1    0[BANK3 ] PTR unsigned char 
;;		 -> main@tempStr(20), 
;;  fmt             1    1[BANK3 ] PTR const unsigned char 
;;		 -> STR_9(8), 
;; Auto vars:     Size  Location     Type
;;  f              11    7[BANK3 ] struct _IO_FILE
;;  ret             2    0        int 
;;  ap              1    6[BANK3 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK3 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       6       0
;;      Locals:         0       0       0      12       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       1      18       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 10
;; This function calls:
;;		_vfprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_sprintf.c"
	line	9
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_sprintf.c"
	line	9
	
_sprintf:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l3886:	
	movlw	(low(?_sprintf|((0x1)<<8)+02h))&0ffh
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@ap)^0180h
	line	16
	
l3888:	
		movf	(sprintf@s)^0180h,w
	movwf	(sprintf@f)^0180h
	movlw	0x1
	movwf	(sprintf@f+1)^0180h

	line	17
	
l3890:	
	clrf	0+(sprintf@f)^0180h+02h
	clrf	1+(sprintf@f)^0180h+02h
	line	18
	
l3892:	
	clrf	0+(sprintf@f)^0180h+09h
	clrf	1+(sprintf@f)^0180h+09h
	line	19
	
l3894:	
	movlw	low(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(vfprintf@fp)^080h
	movlw	high(sprintf@f)
	movwf	((vfprintf@fp)^080h)+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fmt)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(vfprintf@fmt)^080h
	movlw	(low(sprintf@ap|((0x1)<<8)))&0ffh
	movwf	(vfprintf@ap)^080h
	fcall	_vfprintf
	line	20
	
l3896:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(sprintf@f)^0180h+02h,w
	addwf	(sprintf@s)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_sprintf+0)^080h+0
	movf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	line	23
	
l720:	
	return
	callstack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_vfprintf

;; *************** function _vfprintf *****************
;; Defined at:
;;		line 1817 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2   73[BANK1 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  fmt             1   75[BANK1 ] PTR const unsigned char 
;;		 -> STR_9(8), 
;;  ap              1   76[BANK1 ] PTR PTR void 
;;		 -> sprintf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  cfmt            1   77[BANK1 ] PTR unsigned char 
;;		 -> STR_9(8), 
;; Return value:  Size  Location     Type
;;                  2   73[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_vfpfcnvrt
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	1817
global __ptext2
__ptext2:	;psect for function _vfprintf
psect	text2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	1817
	
_vfprintf:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _vfprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	1822
	
l3840:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(vfprintf@fmt)^080h,w
	movwf	(vfprintf@cfmt)^080h
	line	1826
	goto	l3844
	line	1830
	
l3842:	
		movf	(vfprintf@fp)^080h,w
	movwf	(vfpfcnvrt@fp)^080h
movf	(vfprintf@fp+1)^080h,w
	movwf	(vfpfcnvrt@fp+1)^080h

	movlw	(low(vfprintf@cfmt|((0x0)<<8)))&0ffh
	movwf	(vfpfcnvrt@fmt)^080h
	movf	(vfprintf@ap)^080h,w
	movwf	(vfpfcnvrt@ap)^080h
	fcall	_vfpfcnvrt
	line	1826
	
l3844:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(vfprintf@cfmt)^080h,w
	movwf	fsr0
	fcall	stringdir
	xorlw	0
	skipz
	goto	u5741
	goto	u5740
u5741:
	goto	l3842
u5740:
	line	1835
	
l3846:	
	clrf	(?_vfprintf)^080h
	clrf	(?_vfprintf+1)^080h
	line	1840
	
l838:	
	return
	callstack 0
GLOBAL	__end_of_vfprintf
	__end_of_vfprintf:
	signat	_vfprintf,12410
	global	_vfpfcnvrt

;; *************** function _vfpfcnvrt *****************
;; Defined at:
;;		line 1177 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2   61[BANK1 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  fmt             1   63[BANK1 ] PTR PTR unsigned char 
;;		 -> vfprintf@cfmt(1), 
;;  ap              1   64[BANK1 ] PTR PTR void 
;;		 -> sprintf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  convarg         4   67[BANK1 ] struct .
;;  cp              1   72[BANK1 ] PTR unsigned char 
;;		 -> STR_9(8), 
;;  c               1   71[BANK1 ] unsigned char 
;;  done            1    0        _Bool 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0      12       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_efgtoa
;;		_fputc
;;		_read_prec_or_width
;; This function is called by:
;;		_vfprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	line	1177
global __ptext3
__ptext3:	;psect for function _vfpfcnvrt
psect	text3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	1177
	
_vfpfcnvrt:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _vfpfcnvrt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	1201
	
l3780:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(vfpfcnvrt@fmt)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	fsr0
	fcall	stringdir
	xorlw	025h
	skipz
	goto	u5701
	goto	u5700
u5701:
	goto	l3830
u5700:
	line	1202
	
l3782:	
	movf	(vfpfcnvrt@fmt)^080h,w
	movwf	fsr0
	movlw	low(01h)
	addwf	indf,f
	line	1204
	
l3784:	
	clrf	(_width)
	clrf	(_width+1)
	movlw	(low(0))&0ffh
	movwf	(_flags)^080h
	line	1205
	
l3786:	
	movlw	0FFh
	movwf	(_prec)
	movlw	0FFh
	movwf	((_prec))+1
	line	1265
	
l3788:	
	movf	(vfpfcnvrt@fmt)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u5711
	goto	u5710
u5711:
	goto	l3794
u5710:
	line	1266
	
l3790:	
	movf	(vfpfcnvrt@fmt)^080h,w
	movwf	fsr0
	movlw	low(01h)
	addwf	indf,f
	line	1267
	
l3792:	
	movf	(vfpfcnvrt@fmt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_prec_or_width@fmt)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(vfpfcnvrt@ap)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_prec_or_width@ap)
	fcall	_read_prec_or_width
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_prec_or_width)),w
	movwf	(_prec+1)
	movf	(0+(?_read_prec_or_width)),w
	movwf	(_prec)
	line	1689
	
l3794:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(vfpfcnvrt@fmt)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(vfpfcnvrt@cp)^080h
	line	1690
	
l3796:	
	movf	(vfpfcnvrt@cp)^080h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(vfpfcnvrt@c)^080h
	line	1691
	goto	l3804
	line	1695
	
l3798:	
	movlw	low(01h)
	addwf	(vfpfcnvrt@cp)^080h,f
	line	1696
	goto	l3806
	line	1710
	
l820:	
	line	1721
	movlw	06Ch
	movwf	(vfpfcnvrt@c)^080h
	line	1722
	goto	l3806
	line	1724
	
l3800:	
	clrf	(vfpfcnvrt@c)^080h
	line	1725
	goto	l3806
	line	1726
	
l3804:	
	movf	(vfpfcnvrt@c)^080h,w
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 76 to 108
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte          110    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	76^0	; case 76
	skipnz
	goto	l3798
	xorlw	102^76	; case 102
	skipnz
	goto	l820
	xorlw	108^102	; case 108
	skipnz
	goto	l3798
	goto	l3800
	asmopt pop

	line	1728
	
l3806:	
	movf	(vfpfcnvrt@cp)^080h,w
	movwf	fsr0
	fcall	stringdir
	xorlw	066h
	skipz
	goto	u5721
	goto	u5720
u5721:
	goto	l3826
u5720:
	goto	l3814
	line	1756
	
l3808:	
	movf	(vfpfcnvrt@ap)^080h,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(btemp+1)
	movlw	04h
	addwf	indf,f
	movf	(btemp+1),w
	movwf	fsr0
	movf	indf,w
	movwf	(vfpfcnvrt@convarg)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(vfpfcnvrt@convarg+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(vfpfcnvrt@convarg+2)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(vfpfcnvrt@convarg+3)^080h
	line	1757
	goto	l3816
	line	1759
	
l3810:	
	movf	(vfpfcnvrt@ap)^080h,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(btemp+1)
	movlw	04h
	addwf	indf,f
	movf	(btemp+1),w
	movwf	fsr0
	movf	indf,w
	movwf	(vfpfcnvrt@convarg)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(vfpfcnvrt@convarg+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(vfpfcnvrt@convarg+2)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(vfpfcnvrt@convarg+3)^080h
	line	1760
	goto	l3816
	line	1761
	
l3814:	
	movf	(vfpfcnvrt@c)^080h,w
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 76 to 108
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte          110    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	76^0	; case 76
	skipnz
	goto	l3810
	xorlw	108^76	; case 108
	skipnz
	goto	l3808
	goto	l3816
	asmopt pop

	line	1762
	
l3816:	
	movf	(vfpfcnvrt@fmt)^080h,w
	movwf	fsr0
	movf	(vfpfcnvrt@cp)^080h,w
	addlw	01h
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	1763
	goto	l3824
	line	1790
	
l3818:	
;	Return value of _vfpfcnvrt is never used
		movf	(vfpfcnvrt@fp)^080h,w
	movwf	(efgtoa@fp)^080h
movf	(vfpfcnvrt@fp+1)^080h,w
	movwf	(efgtoa@fp+1)^080h

	movf	(vfpfcnvrt@convarg+3)^080h,w
	movwf	(efgtoa@f+3)^080h
	movf	(vfpfcnvrt@convarg+2)^080h,w
	movwf	(efgtoa@f+2)^080h
	movf	(vfpfcnvrt@convarg+1)^080h,w
	movwf	(efgtoa@f+1)^080h
	movf	(vfpfcnvrt@convarg)^080h,w
	movwf	(efgtoa@f)^080h

	movf	(vfpfcnvrt@cp)^080h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(efgtoa@c)^080h
	fcall	_efgtoa
	goto	l831
	line	1792
	
l3824:	
	movf	(vfpfcnvrt@cp)^080h,w
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 102 to 102
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	102^0	; case 102
	skipnz
	goto	l3818
	goto	l3826
	asmopt pop

	line	1806
	
l3826:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(vfpfcnvrt@fmt)^080h,w
	movwf	fsr0
	movlw	low(01h)
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	goto	l831
	line	1811
	
l3830:	
	movf	(vfpfcnvrt@fmt)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_vfpfcnvrt+0)^080h+0
	clrf	(??_vfpfcnvrt+0)^080h+0+1
	movf	0+(??_vfpfcnvrt+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(fputc@c)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_vfpfcnvrt+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(fputc@c+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
		movf	(vfpfcnvrt@fp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(fputc@fp)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movf	(vfpfcnvrt@fp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(fputc@fp+1)

	fcall	_fputc
	goto	l3826
	line	1814
	
l831:	
	return
	callstack 0
GLOBAL	__end_of_vfpfcnvrt
	__end_of_vfpfcnvrt:
	signat	_vfpfcnvrt,12409
	global	_read_prec_or_width

;; *************** function _read_prec_or_width *****************
;; Defined at:
;;		line 1158 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fmt             1    6[BANK0 ] PTR PTR const unsigned c
;;		 -> vfprintf@cfmt(1), 
;;  ap              1    7[BANK0 ] PTR PTR void [1]
;;		 -> sprintf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  c               1    8[BANK0 ] unsigned char 
;;  n               2    9[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	line	1158
global __ptext4
__ptext4:	;psect for function _read_prec_or_width
psect	text4
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	1158
	
_read_prec_or_width:	
;incstack = 0
;; using string table level
	callstack 1
; Regs used in _read_prec_or_width: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	1159
	
l3762:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(read_prec_or_width@n)
	clrf	(read_prec_or_width@n+1)
	line	1160
	
l3764:	
	movf	(read_prec_or_width@fmt),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Ah
	skipz
	goto	u5681
	goto	u5680
u5681:
	goto	l3774
u5680:
	line	1161
	
l3766:	
	movf	(read_prec_or_width@fmt),w
	movwf	fsr0
	movlw	low(01h)
	addwf	indf,f
	line	1162
	
l3768:	
	movf	(read_prec_or_width@ap),w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(btemp+1)
	movlw	02h
	addwf	indf,f
	movf	(btemp+1),w
	movwf	fsr0
	movf	indf,w
	movwf	(read_prec_or_width@n)
	incf	fsr0,f
	movf	indf,w
	movwf	(read_prec_or_width@n+1)
	line	1163
	goto	l3776
	line	1166
	
l3770:	
	movf	(read_prec_or_width@n+1),w
	movwf	(___wmul@multiplier+1)
	movf	(read_prec_or_width@n),w
	movwf	(___wmul@multiplier)
	movlw	0Ah
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(read_prec_or_width@c),w
	addwf	(0+(?___wmul)),w
	movwf	(read_prec_or_width@n)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(read_prec_or_width@n)
	line	1167
	
l3772:	
	movf	(read_prec_or_width@fmt),w
	movwf	fsr0
	movlw	low(01h)
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	line	1165
	
l3774:	
	movf	(read_prec_or_width@fmt),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	fcall	stringdir
	addlw	0D0h
	movwf	(read_prec_or_width@c)
	movlw	low(0Ah)
	subwf	((read_prec_or_width@c)),w
	skipc
	goto	u5691
	goto	u5690
u5691:
	goto	l3770
u5690:
	line	1170
	
l3776:	
	movf	(read_prec_or_width@n+1),w
	movwf	(?_read_prec_or_width+1)
	movf	(read_prec_or_width@n),w
	movwf	(?_read_prec_or_width)
	line	1171
	
l811:	
	return
	callstack 0
GLOBAL	__end_of_read_prec_or_width
	__end_of_read_prec_or_width:
	signat	_read_prec_or_width,8314
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_prec_or_width
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\Umul16.c"
	line	15
global __ptext5
__ptext5:	;psect for function ___wmul
psect	text5
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\Umul16.c"
	line	15
	
___wmul:	
;incstack = 0
	callstack 0
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l3488:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l3490:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u5231
	goto	u5230
u5231:
	goto	l257
u5230:
	line	46
	
l3492:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l257:	
	line	47
	movlw	01h
	
u5245:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u5245
	line	48
	
l3494:	
	movlw	01h
	
u5255:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u5255
	line	49
	
l3496:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u5261
	goto	u5260
u5261:
	goto	l3490
u5260:
	line	52
	
l3498:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l259:	
	return
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_efgtoa

;; *************** function _efgtoa *****************
;; Defined at:
;;		line 587 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2   10[BANK1 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  f               4   12[BANK1 ] PTR struct _IO_FILE
;;  c               1   16[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  u               4   57[BANK1 ] struct flui
;;  g               4   51[BANK1 ] struct flui
;;  l               4   46[BANK1 ] struct flui
;;  h               4   42[BANK1 ] struct flui
;;  ou              4   36[BANK1 ] struct flui
;;  n               2   55[BANK1 ] int 
;;  i               2   40[BANK1 ] int 
;;  w               2   34[BANK1 ] int 
;;  e               2   32[BANK1 ] int 
;;  m               2   30[BANK1 ] int 
;;  d               2   28[BANK1 ] int 
;;  t               2   21[BANK1 ] int 
;;  p               2   19[BANK1 ] int 
;;  ne              2   17[BANK1 ] int 
;;  sign            1   50[BANK1 ] unsigned char 
;;  nmode           1   27[BANK1 ] unsigned char 
;;  mode            1   26[BANK1 ] unsigned char 
;;  pp              1   25[BANK1 ] unsigned char 
;;  esign           1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       7       0       0
;;      Locals:         0       0      44       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4      51       0       0
;;Total ram usage:       55 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		___fladd
;;		___fldiv
;;		___fleq
;;		___flge
;;		___flmul
;;		___flneg
;;		___flsub
;;		___fltol
;;		___fpclassifyf
;;		_floorf
;;		_labs
;;		_memcpy
;;		_pad
;;		_strcpy
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	587
global __ptext6
__ptext6:	;psect for function _efgtoa
psect	text6
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	587
	
_efgtoa:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _efgtoa: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	595
	
l3548:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(efgtoa@sign)^080h
	line	596
	
l3550:	
	movf	(efgtoa@f+3)^080h,w
	movwf	(efgtoa@g+3)^080h
	movf	(efgtoa@f+2)^080h,w
	movwf	(efgtoa@g+2)^080h
	movf	(efgtoa@f+1)^080h,w
	movwf	(efgtoa@g+1)^080h
	movf	(efgtoa@f)^080h,w
	movwf	(efgtoa@g)^080h

	line	597
	
l3552:	
	movf	(efgtoa@g+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1)

	movlw	0x0
	movwf	(___flge@ff2+3)
	movlw	0x0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u5331
	goto	u5330
u5331:
	goto	l3558
u5330:
	line	598
	
l3554:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@sign)^080h
	line	599
	
l3556:	
	movf	(efgtoa@g+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flneg@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flneg@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flneg@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flneg@f1)

	fcall	___flneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@g+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@g+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@g+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@g)^080h

	line	603
	
l3558:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(efgtoa@n)^080h
	clrf	(efgtoa@n+1)^080h
	line	604
	
l3560:	
	movf	(_width+1),w
	movwf	(efgtoa@w+1)^080h
	movf	(_width),w
	movwf	(efgtoa@w)^080h
	line	605
	
l3562:	
	movf	((efgtoa@sign)^080h),w
	btfsc	status,2
	goto	u5341
	goto	u5340
u5341:
	goto	l3570
u5340:
	line	610
	
l3564:	
	movf	((efgtoa@sign)^080h),w
	btfss	status,2
	goto	u5351
	goto	u5350
u5351:
	goto	l3568
u5350:
	
l3566:	
	movlw	02Bh
	movwf	(_efgtoa$726)^080h
	movlw	0
	movwf	((_efgtoa$726)^080h)+1
	goto	l759
	
l3568:	
	movlw	02Dh
	movwf	(_efgtoa$726)^080h
	movlw	0
	movwf	((_efgtoa$726)^080h)+1
	
l759:	
	movf	(_efgtoa$726)^080h,w
	movwf	(efgtoa@sign)^080h
	line	619
	
l3570:	
	movf	(efgtoa@g+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fpclassifyf@x+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fpclassifyf@x+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fpclassifyf@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fpclassifyf@x)

	fcall	___fpclassifyf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((0+(?___fpclassifyf))),w
iorwf	((1+(?___fpclassifyf))),w
	btfss	status,2
	goto	u5361
	goto	u5360
u5361:
	goto	l3584
u5360:
	line	620
	
l3572:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((efgtoa@sign)^080h),w
	btfsc	status,2
	goto	u5371
	goto	u5370
u5371:
	goto	l3576
u5370:
	line	621
	
l3574:	
	movf	(efgtoa@sign)^080h,w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_dbuf)^0100h
	line	622
	movlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(efgtoa@w)^080h,f
	skipnc
	incf	(efgtoa@w+1)^080h,f
	movlw	0FFh
	addwf	(efgtoa@w+1)^080h,f
	line	623
	movlw	01h
	movwf	(efgtoa@n)^080h
	movlw	0
	movwf	((efgtoa@n)^080h)+1
	line	632
	
l3576:	
	movf	(efgtoa@n)^080h,w
	addlw	low(_dbuf|((0x1)<<8))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strcpy@dest)
	movlw	(low((((STR_12)-__stringbase)|8000h)))&0ffh
	movwf	(strcpy@src)
	fcall	_strcpy
	line	634
	
l3578:	
	movlw	0FDh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(efgtoa@w)^080h,f
	skipnc
	incf	(efgtoa@w+1)^080h,f
	movlw	0FFh
	addwf	(efgtoa@w+1)^080h,f
	line	635
	
l3580:	
		movf	(efgtoa@fp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(pad@fp)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movf	(efgtoa@fp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(pad@fp+1)

	movlw	(low(_dbuf|((0x1)<<8)))&0ffh
	movwf	(pad@buf)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@w+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(pad@p+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@w)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(pad@p)
	fcall	_pad
	goto	l762
	line	637
	
l3584:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fpclassifyf@x+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fpclassifyf@x+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fpclassifyf@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fpclassifyf@x)

	fcall	___fpclassifyf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((0+(?___fpclassifyf))),w
iorwf	((1+(?___fpclassifyf))),w
	btfss	status,2
	goto	u5381
	goto	u5380
u5381:
	goto	l3598
u5380:
	line	638
	
l3586:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((efgtoa@sign)^080h),w
	btfsc	status,2
	goto	u5391
	goto	u5390
u5391:
	goto	l3590
u5390:
	line	639
	
l3588:	
	movf	(efgtoa@sign)^080h,w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_dbuf)^0100h
	line	640
	movlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(efgtoa@w)^080h,f
	skipnc
	incf	(efgtoa@w+1)^080h,f
	movlw	0FFh
	addwf	(efgtoa@w+1)^080h,f
	line	641
	movlw	01h
	movwf	(efgtoa@n)^080h
	movlw	0
	movwf	((efgtoa@n)^080h)+1
	line	650
	
l3590:	
	movf	(efgtoa@n)^080h,w
	addlw	low(_dbuf|((0x1)<<8))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strcpy@dest)
	movlw	(low((((STR_15)-__stringbase)|8000h)))&0ffh
	movwf	(strcpy@src)
	fcall	_strcpy
	goto	l3578
	line	657
	
l3598:	
	movlw	0x3f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@u+3)^080h
	movlw	0x80
	movwf	(efgtoa@u+2)^080h
	movlw	0x0
	movwf	(efgtoa@u+1)^080h
	movlw	0x0
	movwf	(efgtoa@u)^080h

	line	658
	
l3600:	
	clrf	(efgtoa@e)^080h
	clrf	(efgtoa@e+1)^080h
	line	659
	
l3602:	
	movf	(efgtoa@g+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fleq@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fleq@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fleq@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fleq@ff1)

	movlw	0x0
	movwf	(___fleq@ff2+3)
	movlw	0x0
	movwf	(___fleq@ff2+2)
	movlw	0x0
	movwf	(___fleq@ff2+1)
	movlw	0x0
	movwf	(___fleq@ff2)

	fcall	___fleq
	btfsc	status,0
	goto	u5401
	goto	u5400
u5401:
	goto	l3628
u5400:
	goto	l3608
	line	661
	
l3606:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+3)^080h,w
	movwf	(efgtoa@u+3)^080h
	movf	(efgtoa@ou+2)^080h,w
	movwf	(efgtoa@u+2)^080h
	movf	(efgtoa@ou+1)^080h,w
	movwf	(efgtoa@u+1)^080h
	movf	(efgtoa@ou)^080h,w
	movwf	(efgtoa@u)^080h

	line	662
	movlw	01h
	addwf	(efgtoa@e)^080h,f
	skipnc
	incf	(efgtoa@e+1)^080h,f
	movlw	0
	addwf	(efgtoa@e+1)^080h,f
	line	660
	
l3608:	
	movlw	0x41
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+3)
	movlw	0x20
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@ou+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@ou+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@ou+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@ou)^080h

	
l3610:	
	movf	(efgtoa@g)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_efgtoa+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_efgtoa+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_efgtoa+0)+0+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_efgtoa+0)+0+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+0,f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+1)^080h,w
	skipc
	incfsz	(efgtoa@ou+1)^080h,w
	goto	u5411
	goto	u5412
u5411:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+1,f
u5412:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+2)^080h,w
	skipc
	incfsz	(efgtoa@ou+2)^080h,w
	goto	u5413
	goto	u5414
u5413:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+2,f
u5414:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+3)^080h,w
	skipc
	incfsz	(efgtoa@ou+3)^080h,w
	goto	u5415
	goto	u5416
u5415:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+3,f
u5416:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0

	movf	3+(??_efgtoa+0)+0,w
	movwf	(labs@a+3)
	movf	2+(??_efgtoa+0)+0,w
	movwf	(labs@a+2)
	movf	1+(??_efgtoa+0)+0,w
	movwf	(labs@a+1)
	movf	0+(??_efgtoa+0)+0,w
	movwf	(labs@a)

	fcall	_labs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(3+(?_labs)),7
	goto	u5421
	movf	(3+(?_labs)),w
	btfss	status,2
	goto	u5420
	movf	(2+(?_labs)),w
	btfss	status,2
	goto	u5420
	movf	(1+(?_labs)),w
	btfss	status,2
	goto	u5420
	movlw	2
	subwf	(0+(?_labs)),w
	skipz
	goto	u5423
u5423:
	btfss	status,0
	goto	u5421
	goto	u5420

u5421:
	goto	l3606
u5420:
	
l3612:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u5431
	goto	u5430
u5431:
	goto	l3606
u5430:
	line	664
	
l3614:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_efgtoa+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_efgtoa+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_efgtoa+0)+0+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_efgtoa+0)+0+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+0,f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+1)^080h,w
	skipc
	incfsz	(efgtoa@u+1)^080h,w
	goto	u5441
	goto	u5442
u5441:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+1,f
u5442:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+2)^080h,w
	skipc
	incfsz	(efgtoa@u+2)^080h,w
	goto	u5443
	goto	u5444
u5443:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+2,f
u5444:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+3)^080h,w
	skipc
	incfsz	(efgtoa@u+3)^080h,w
	goto	u5445
	goto	u5446
u5445:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+3,f
u5446:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0

	movf	3+(??_efgtoa+0)+0,w
	movwf	(labs@a+3)
	movf	2+(??_efgtoa+0)+0,w
	movwf	(labs@a+2)
	movf	1+(??_efgtoa+0)+0,w
	movwf	(labs@a+1)
	movf	0+(??_efgtoa+0)+0,w
	movwf	(labs@a)

	fcall	_labs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(3+(?_labs)),7
	goto	u5450
	movf	(3+(?_labs)),w
	btfss	status,2
	goto	u5451
	movf	(2+(?_labs)),w
	btfss	status,2
	goto	u5451
	movf	(1+(?_labs)),w
	btfss	status,2
	goto	u5451
	movlw	2
	subwf	(0+(?_labs)),w
	skipz
	goto	u5453
u5453:
	btfsc	status,0
	goto	u5451
	goto	u5450

u5451:
	goto	l3626
u5450:
	line	665
	
l3616:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+3)^080h,w
	movwf	(efgtoa@g+3)^080h
	movf	(efgtoa@u+2)^080h,w
	movwf	(efgtoa@g+2)^080h
	movf	(efgtoa@u+1)^080h,w
	movwf	(efgtoa@g+1)^080h
	movf	(efgtoa@u)^080h,w
	movwf	(efgtoa@g)^080h

	line	666
	goto	l3628
	line	669
	
l3618:	
	movlw	0x41
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@a+3)
	movlw	0x20
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b)

	fcall	___fldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@u+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@u+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@u+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@u)^080h

	line	670
	
l3620:	
	movlw	0FFh
	addwf	(efgtoa@e)^080h,f
	skipnc
	incf	(efgtoa@e+1)^080h,f
	movlw	0FFh
	addwf	(efgtoa@e+1)^080h,f
	line	671
	
l3622:	
	movf	(efgtoa@g)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_efgtoa+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_efgtoa+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_efgtoa+0)+0+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_efgtoa+0)+0+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+0,f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+1)^080h,w
	skipc
	incfsz	(efgtoa@u+1)^080h,w
	goto	u5461
	goto	u5462
u5461:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+1,f
u5462:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+2)^080h,w
	skipc
	incfsz	(efgtoa@u+2)^080h,w
	goto	u5463
	goto	u5464
u5463:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+2,f
u5464:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+3)^080h,w
	skipc
	incfsz	(efgtoa@u+3)^080h,w
	goto	u5465
	goto	u5466
u5465:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+3,f
u5466:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0

	movf	3+(??_efgtoa+0)+0,w
	movwf	(labs@a+3)
	movf	2+(??_efgtoa+0)+0,w
	movwf	(labs@a+2)
	movf	1+(??_efgtoa+0)+0,w
	movwf	(labs@a+1)
	movf	0+(??_efgtoa+0)+0,w
	movwf	(labs@a)

	fcall	_labs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(3+(?_labs)),7
	goto	u5470
	movf	(3+(?_labs)),w
	btfss	status,2
	goto	u5471
	movf	(2+(?_labs)),w
	btfss	status,2
	goto	u5471
	movf	(1+(?_labs)),w
	btfss	status,2
	goto	u5471
	movlw	2
	subwf	(0+(?_labs)),w
	skipz
	goto	u5473
u5473:
	btfsc	status,0
	goto	u5471
	goto	u5470

u5471:
	goto	l3626
u5470:
	goto	l3616
	line	668
	
l3626:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u5481
	goto	u5480
u5481:
	goto	l3618
u5480:
	line	683
	
l3628:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@c)^080h,w
	movwf	(efgtoa@mode)^080h
	line	685
	movf	(efgtoa@mode)^080h,w
	movwf	(efgtoa@nmode)^080h
	line	696
	
l3630:	
	btfsc	(_prec+1),7
	goto	u5491
	goto	u5490
u5491:
	goto	l3634
u5490:
	
l3632:	
	movf	(_prec+1),w
	movwf	(efgtoa@p+1)^080h
	movf	(_prec),w
	movwf	(efgtoa@p)^080h
	goto	l778
	
l3634:	
	movlw	06h
	movwf	(efgtoa@p)^080h
	movlw	0
	movwf	((efgtoa@p)^080h)+1
	
l778:	
	line	711
	movf	(efgtoa@p+1)^080h,w
	movwf	(efgtoa@m+1)^080h
	movf	(efgtoa@p)^080h,w
	movwf	(efgtoa@m)^080h
	line	716
	movlw	01h
	addwf	(efgtoa@m)^080h,f
	skipnc
	incf	(efgtoa@m+1)^080h,f
	movlw	0
	addwf	(efgtoa@m+1)^080h,f
	line	721
	
l3636:	
		movlw	102
	xorwf	((efgtoa@nmode)^080h),w
	btfss	status,2
	goto	u5501
	goto	u5500
u5501:
	goto	l3648
u5500:
	line	722
	
l3638:	
	btfss	(efgtoa@e+1)^080h,7
	goto	u5511
	goto	u5510
u5511:
	goto	l3644
u5510:
	line	723
	
l3640:	
	movlw	0x3f
	movwf	(efgtoa@u+3)^080h
	movlw	0x80
	movwf	(efgtoa@u+2)^080h
	movlw	0x0
	movwf	(efgtoa@u+1)^080h
	movlw	0x0
	movwf	(efgtoa@u)^080h

	line	724
	
l3642:	
	clrf	(efgtoa@e)^080h
	clrf	(efgtoa@e+1)^080h
	line	726
	
l3644:	
		movlw	103
	xorwf	((efgtoa@mode)^080h),w
	btfsc	status,2
	goto	u5521
	goto	u5520
u5521:
	goto	l3648
u5520:
	line	727
	
l3646:	
	movf	(efgtoa@e)^080h,w
	addwf	(efgtoa@m)^080h,f
	skipnc
	incf	(efgtoa@m+1)^080h,f
	movf	(efgtoa@e+1)^080h,w
	addwf	(efgtoa@m+1)^080h,f
	line	733
	
l3648:	
	clrf	(efgtoa@i)^080h
	clrf	(efgtoa@i+1)^080h
	line	734
	
l3650:	
	movf	(efgtoa@g+3)^080h,w
	movwf	(efgtoa@h+3)^080h
	movf	(efgtoa@g+2)^080h,w
	movwf	(efgtoa@h+2)^080h
	movf	(efgtoa@g+1)^080h,w
	movwf	(efgtoa@h+1)^080h
	movf	(efgtoa@g)^080h,w
	movwf	(efgtoa@h)^080h

	line	735
	
l3652:	
	movf	(efgtoa@u+3)^080h,w
	movwf	(efgtoa@ou+3)^080h
	movf	(efgtoa@u+2)^080h,w
	movwf	(efgtoa@ou+2)^080h
	movf	(efgtoa@u+1)^080h,w
	movwf	(efgtoa@ou+1)^080h
	movf	(efgtoa@u)^080h,w
	movwf	(efgtoa@ou)^080h

	line	736
	goto	l3664
	line	737
	
l3654:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b)

	fcall	___fldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fldiv)),w
	movwf	(floorf@x+3)
	movf	(2+(?___fldiv)),w
	movwf	(floorf@x+2)
	movf	(1+(?___fldiv)),w
	movwf	(floorf@x+1)
	movf	(0+(?___fldiv)),w
	movwf	(floorf@x)

	fcall	_floorf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?_floorf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@l+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_floorf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@l+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_floorf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@l+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_floorf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@l)^080h

	line	738
	
l3656:	
	movf	(efgtoa@l+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@d+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@d)^080h
	line	739
	
l3658:	
	movf	(efgtoa@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(___flsub@a+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@a+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@a+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b)

	fcall	___flsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@h+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@h+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@h+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@h)^080h

	line	740
	
l3660:	
	movlw	0x41
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@a+3)
	movlw	0x20
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b)

	fcall	___fldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@u+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@u+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@u+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@u)^080h

	line	741
	
l3662:	
	movlw	01h
	addwf	(efgtoa@i)^080h,f
	skipnc
	incf	(efgtoa@i+1)^080h,f
	movlw	0
	addwf	(efgtoa@i+1)^080h,f
	line	736
	
l3664:	
	movf	(efgtoa@i+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_efgtoa+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@m+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+0,w
	skipz
	goto	u5535
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@m)^080h,w
	subwf	(efgtoa@i)^080h,w
u5535:

	skipc
	goto	u5531
	goto	u5530
u5531:
	goto	l3654
u5530:
	line	745
	
l3666:	
	movlw	0x40
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+3)
	movlw	0xa0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@l+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@l+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@l+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@l)^080h

	line	746
	
l3668:	
	movf	(efgtoa@h+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u5541
	goto	u5540
u5541:
	goto	l3672
u5540:
	line	747
	
l3670:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@l+3)^080h
	movlw	0x0
	movwf	(efgtoa@l+2)^080h
	movlw	0x0
	movwf	(efgtoa@l+1)^080h
	movlw	0x0
	movwf	(efgtoa@l)^080h

	line	748
	goto	l3678
	line	750
	
l3672:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fleq@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fleq@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fleq@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fleq@ff1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fleq@ff2+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fleq@ff2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fleq@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fleq@ff2)

	fcall	___fleq
	btfss	status,0
	goto	u5551
	goto	u5550
u5551:
	goto	l3678
u5550:
	
l3674:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(efgtoa@d)^080h,(0)&7
	goto	u5561
	goto	u5560
u5561:
	goto	l3678
u5560:
	line	751
	
l3676:	
	movlw	0x0
	movwf	(efgtoa@l+3)^080h
	movlw	0x0
	movwf	(efgtoa@l+2)^080h
	movlw	0x0
	movwf	(efgtoa@l+1)^080h
	movlw	0x0
	movwf	(efgtoa@l)^080h

	line	756
	
l3678:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@g)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a)

	fcall	___fladd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@h+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@h+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@h+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@h)^080h

	line	758
	
l3680:	
	movf	(efgtoa@h+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1)

	movlw	0x41
	movwf	(___flmul@b+3)
	movlw	0x20
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___flmul)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___flmul)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___flmul)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u5571
	goto	u5570
u5571:
	goto	l788
u5570:
	line	759
	
l3682:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(efgtoa@e)^080h,f
	skipnc
	incf	(efgtoa@e+1)^080h,f
	movlw	0
	addwf	(efgtoa@e+1)^080h,f
	line	760
	
l3684:	
	movlw	0x41
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+3)
	movlw	0x20
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@ou+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@ou+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@ou+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@ou)^080h

	line	762
	
l3686:	
		movlw	102
	xorwf	((efgtoa@nmode)^080h),w
	btfss	status,2
	goto	u5581
	goto	u5580
u5581:
	goto	l788
u5580:
	line	764
	
l3688:	
	movlw	01h
	addwf	(efgtoa@m)^080h,f
	skipnc
	incf	(efgtoa@m+1)^080h,f
	movlw	0
	addwf	(efgtoa@m+1)^080h,f
	line	767
	
l788:	
	line	770
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@ou+3)^080h,w
	movwf	(efgtoa@u+3)^080h
	movf	(efgtoa@ou+2)^080h,w
	movwf	(efgtoa@u+2)^080h
	movf	(efgtoa@ou+1)^080h,w
	movwf	(efgtoa@u+1)^080h
	movf	(efgtoa@ou)^080h,w
	movwf	(efgtoa@u)^080h

	line	774
	movf	(efgtoa@e+1)^080h,w
	movwf	(efgtoa@ne+1)^080h
	movf	(efgtoa@e)^080h,w
	movwf	(efgtoa@ne)^080h
	line	776
	
l3690:	
	clrf	(efgtoa@pp)^080h
	line	777
	
l3692:	
	clrf	(efgtoa@t)^080h
	clrf	(efgtoa@t+1)^080h
	line	778
	
l3694:	
	clrf	(efgtoa@i)^080h
	clrf	(efgtoa@i+1)^080h
	line	779
	goto	l3738
	line	780
	
l3696:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b)

	fcall	___fldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fldiv)),w
	movwf	(floorf@x+3)
	movf	(2+(?___fldiv)),w
	movwf	(floorf@x+2)
	movf	(1+(?___fldiv)),w
	movwf	(floorf@x+1)
	movf	(0+(?___fldiv)),w
	movwf	(floorf@x)

	fcall	_floorf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?_floorf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@l+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_floorf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@l+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_floorf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@l+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_floorf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@l)^080h

	line	781
	movf	(efgtoa@l+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fltol)),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u5595
	movlw	0Ah
	subwf	(0+(?___fltol)),w
u5595:

	skipnc
	goto	u5591
	goto	u5590
u5591:
	goto	l3700
u5590:
	
l3698:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@d+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@d)^080h
	goto	l3702
	
l3700:	
	movlw	09h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@d)^080h
	movlw	0
	movwf	((efgtoa@d)^080h)+1
	line	793
	
l3702:	
	movf	((efgtoa@pp)^080h),w
	btfss	status,2
	goto	u5601
	goto	u5600
u5601:
	goto	l3722
u5600:
	
l3704:	
	btfss	(efgtoa@ne+1)^080h,7
	goto	u5611
	goto	u5610
u5611:
	goto	l3722
u5610:
	line	794
	
l3706:	
	movf	(efgtoa@n)^080h,w
	addlw	low(_dbuf|((0x1)<<8))&0ffh
	movwf	fsr0
	movlw	02Eh
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3708:	
	movlw	01h
	addwf	(efgtoa@n)^080h,f
	skipnc
	incf	(efgtoa@n+1)^080h,f
	movlw	0
	addwf	(efgtoa@n+1)^080h,f
	line	795
	
l3710:	
	movlw	0FFh
	addwf	(efgtoa@w)^080h,f
	skipnc
	incf	(efgtoa@w+1)^080h,f
	movlw	0FFh
	addwf	(efgtoa@w+1)^080h,f
	line	796
	
l3712:	
	movlw	01h
	movwf	(efgtoa@pp)^080h
	goto	l3722
	line	799
	
l3714:	
	movf	(efgtoa@n)^080h,w
	addlw	low(_dbuf|((0x1)<<8))&0ffh
	movwf	fsr0
	movlw	030h
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3716:	
	movlw	01h
	addwf	(efgtoa@n)^080h,f
	skipnc
	incf	(efgtoa@n+1)^080h,f
	movlw	0
	addwf	(efgtoa@n+1)^080h,f
	line	800
	
l3718:	
	movlw	0FFh
	addwf	(efgtoa@w)^080h,f
	skipnc
	incf	(efgtoa@w+1)^080h,f
	movlw	0FFh
	addwf	(efgtoa@w+1)^080h,f
	line	801
	
l3720:	
	movlw	0FFh
	addwf	(efgtoa@t)^080h,f
	skipnc
	incf	(efgtoa@t+1)^080h,f
	movlw	0FFh
	addwf	(efgtoa@t+1)^080h,f
	line	798
	
l3722:	
	movf	((efgtoa@t)^080h),w
iorwf	((efgtoa@t+1)^080h),w
	btfss	status,2
	goto	u5621
	goto	u5620
u5621:
	goto	l3714
u5620:
	line	803
	
l3724:	
	movf	(efgtoa@n)^080h,w
	addlw	low(_dbuf|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(efgtoa@d)^080h,w
	addlw	030h
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3726:	
	movlw	01h
	addwf	(efgtoa@n)^080h,f
	skipnc
	incf	(efgtoa@n+1)^080h,f
	movlw	0
	addwf	(efgtoa@n+1)^080h,f
	line	804
	
l3728:	
	movlw	0FFh
	addwf	(efgtoa@w)^080h,f
	skipnc
	incf	(efgtoa@w+1)^080h,f
	movlw	0FFh
	addwf	(efgtoa@w+1)^080h,f
	line	806
	
l3730:	
	movf	(efgtoa@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@l)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(___flsub@a+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@a+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@a+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@h)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b)

	fcall	___flsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@h+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@h+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@h+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@h)^080h

	line	807
	
l3732:	
	movlw	0x41
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@a+3)
	movlw	0x20
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@b)

	fcall	___fldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@u+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@u+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@u+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@u)^080h

	line	808
	
l3734:	
	movlw	0FFh
	addwf	(efgtoa@ne)^080h,f
	skipnc
	incf	(efgtoa@ne+1)^080h,f
	movlw	0FFh
	addwf	(efgtoa@ne+1)^080h,f
	line	809
	
l3736:	
	movlw	01h
	addwf	(efgtoa@i)^080h,f
	skipnc
	incf	(efgtoa@i+1)^080h,f
	movlw	0
	addwf	(efgtoa@i+1)^080h,f
	line	779
	
l3738:	
	movf	(efgtoa@i+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_efgtoa+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@m+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+0,w
	skipz
	goto	u5635
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@m)^080h,w
	subwf	(efgtoa@i)^080h,w
u5635:

	skipnc
	goto	u5631
	goto	u5630
u5631:
	goto	l3742
u5630:
	
l3740:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@n+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u5645
	movlw	04Bh
	subwf	(efgtoa@n)^080h,w
u5645:

	skipc
	goto	u5641
	goto	u5640
u5641:
	goto	l3696
u5640:
	line	816
	
l3742:	
	movlw	04Fh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@i)^080h
	movlw	0
	movwf	((efgtoa@i)^080h)+1
	line	817
	
l3744:	
	movf	(efgtoa@i)^080h,w
	addlw	low(_dbuf|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	line	848
	
l3746:	
	movlw	(low(_dbuf|((0x1)<<8)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_efgtoa+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@n)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_efgtoa+0)+0,f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@i)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_efgtoa+0)+0,w
	movwf	(memcpy@d1)
	movlw	(low(_dbuf|((0x1)<<8)))&0ffh
	movwf	(memcpy@s1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@n+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(memcpy@n+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@n)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(memcpy@n)
	fcall	_memcpy
	line	849
	
l3748:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@n)^080h,w
	subwf	(efgtoa@i)^080h,w
	movwf	(efgtoa@n)^080h
	movf	(efgtoa@n+1)^080h,w
	skipc
	incf	(efgtoa@n+1)^080h,w
	subwf	(efgtoa@i+1)^080h,w
	movwf	1+(efgtoa@n)^080h
	line	850
	
l3750:	
	movf	((efgtoa@sign)^080h),w
	btfss	status,2
	goto	u5651
	goto	u5650
u5651:
	movlw	1
	goto	u5660
u5650:
	movlw	0
u5660:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_efgtoa+0)+0
	clrf	(??_efgtoa+0)+0+1
	movf	0+(??_efgtoa+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@i)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_efgtoa+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(efgtoa@i+1)^080h
	line	861
	
l3752:	
	movf	((efgtoa@sign)^080h),w
	btfsc	status,2
	goto	u5671
	goto	u5670
u5671:
	goto	l3756
u5670:
	line	862
	
l3754:	
	movlw	0FFh
	addwf	(efgtoa@n)^080h,f
	skipnc
	incf	(efgtoa@n+1)^080h,f
	movlw	0FFh
	addwf	(efgtoa@n+1)^080h,f
	movf	((efgtoa@n)^080h),w
	addlw	low(_dbuf|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(efgtoa@sign)^080h,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	864
	
l3756:	
	movf	(efgtoa@i)^080h,w
	subwf	(efgtoa@w)^080h,f
	movf	(efgtoa@i+1)^080h,w
	skipc
	decf	(efgtoa@w+1)^080h,f
	subwf	(efgtoa@w+1)^080h,f
	line	867
	
l3758:	
		movf	(efgtoa@fp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(pad@fp)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movf	(efgtoa@fp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(pad@fp+1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@n)^080h,w
	addlw	low(_dbuf|((0x1)<<8))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(pad@buf)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@w+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(pad@p+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(efgtoa@w)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(pad@p)
	fcall	_pad
	line	868
	
l762:	
	return
	callstack 0
GLOBAL	__end_of_efgtoa
	__end_of_efgtoa:
	signat	_efgtoa,12409
	global	_strcpy

;; *************** function _strcpy *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\strcpy.c"
;; Parameters:    Size  Location     Type
;;  dest            1    0[BANK0 ] PTR unsigned char 
;;		 -> dbuf(80), 
;;  src             1    1[BANK0 ] PTR const unsigned char 
;;		 -> STR_15(4), STR_12(4), 
;; Auto vars:     Size  Location     Type
;;  d               1    2[BANK0 ] PTR unsigned char 
;;		 -> dbuf(80), 
;; Return value:  Size  Location     Type
;;                  1    0[BANK0 ] PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\strcpy.c"
	line	3
global __ptext7
__ptext7:	;psect for function _strcpy
psect	text7
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\strcpy.c"
	line	3
	
_strcpy:	
;incstack = 0
;; using string table level
	callstack 1
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	5
	
l3528:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(strcpy@dest),w
	movwf	(strcpy@d)
	line	6
	
l3530:	
	movlw	01h
	addwf	(strcpy@src),f
	movlw	-01h
	addwf	(strcpy@src),w
	movwf	fsr0
	fcall	stringdir
	movwf	btemp+1
	movf	(strcpy@d),w
	incf	(strcpy@d),f
	movwf	fsr0
	movf	btemp+1,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	movf	((indf)),w
	btfss	status,2
	goto	u5301
	goto	u5300
u5301:
	goto	l3530
u5300:
	line	8
	
l904:	
	return
	callstack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
	signat	_strcpy,8313
	global	_pad

;; *************** function _pad *****************
;; Defined at:
;;		line 193 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2   21[BANK0 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  buf             1   23[BANK0 ] PTR unsigned char 
;;		 -> dbuf(80), 
;;  p               2   24[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2   27[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_fputc
;;		_fputs
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	193
global __ptext8
__ptext8:	;psect for function _pad
psect	text8
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\doprnt.c"
	line	193
	
_pad:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _pad: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	205
	
l3516:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(pad@p+1),7
	goto	u5281
	goto	u5280
u5281:
	goto	l747
u5280:
	line	206
	
l3518:	
	clrf	(pad@p)
	clrf	(pad@p+1)
	line	207
	
l747:	
	line	208
	clrf	(pad@i)
	clrf	(pad@i+1)
	line	209
	goto	l3524
	line	210
	
l3520:	
	movlw	020h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(fputc@c)
	movlw	0
	movwf	((fputc@c))+1
		movf	(pad@fp),w
	movwf	(fputc@fp)
movf	(pad@fp+1),w
	movwf	(fputc@fp+1)

	fcall	_fputc
	line	211
	
l3522:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(pad@i),f
	skipnc
	incf	(pad@i+1),f
	movlw	0
	addwf	(pad@i+1),f
	line	209
	
l3524:	
	movf	(pad@i+1),w
	xorlw	80h
	movwf	(??_pad+0)+0
	movf	(pad@p+1),w
	xorlw	80h
	subwf	(??_pad+0)+0,w
	skipz
	goto	u5295
	movf	(pad@p),w
	subwf	(pad@i),w
u5295:

	skipc
	goto	u5291
	goto	u5290
u5291:
	goto	l3520
u5290:
	line	218
	
l3526:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(pad@buf),w
	movwf	(fputs@s)
		movf	(pad@fp),w
	movwf	(fputs@fp)
movf	(pad@fp+1),w
	movwf	(fputs@fp+1)

	fcall	_fputs
	line	226
	
l751:	
	return
	callstack 0
GLOBAL	__end_of_pad
	__end_of_pad:
	signat	_pad,12409
	global	_fputs

;; *************** function _fputs *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_fputs.c"
;; Parameters:    Size  Location     Type
;;  s               1   13[BANK0 ] PTR const unsigned char 
;;		 -> dbuf(80), 
;;  fp              2   14[BANK0 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;; Auto vars:     Size  Location     Type
;;  i               2   19[BANK0 ] int 
;;  c               1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   13[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_fputc
;; This function is called by:
;;		_pad
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_fputs.c"
	line	8
global __ptext9
__ptext9:	;psect for function _fputs
psect	text9
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_fputs.c"
	line	8
	
_fputs:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _fputs: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	13
	
l3480:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(fputs@i)
	clrf	(fputs@i+1)
	line	14
	goto	l3486
	line	15
	
l3482:	
	movf	(fputs@c),w
	movwf	(??_fputs+0)+0
	clrf	(??_fputs+0)+0+1
	movf	0+(??_fputs+0)+0,w
	movwf	(fputc@c)
	movf	1+(??_fputs+0)+0,w
	movwf	(fputc@c+1)
		movf	(fputs@fp),w
	movwf	(fputc@fp)
movf	(fputs@fp+1),w
	movwf	(fputc@fp+1)

	fcall	_fputc
	line	16
	
l3484:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(fputs@i),f
	skipnc
	incf	(fputs@i+1),f
	movlw	0
	addwf	(fputs@i+1),f
	line	14
	
l3486:	
	movf	(fputs@i),w
	addwf	(fputs@s),w
	movwf	(??_fputs+0)+0
	movf	0+(??_fputs+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(fputs@c)
	movf	(((fputs@c))),w
	btfss	status,2
	goto	u5221
	goto	u5220
u5221:
	goto	l3482
u5220:
	line	19
	
l895:	
	return
	callstack 0
GLOBAL	__end_of_fputs
	__end_of_fputs:
	signat	_fputs,8314
	global	_fputc

;; *************** function _fputc *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_fputc.c"
;; Parameters:    Size  Location     Type
;;  c               2    0[BANK0 ] int 
;;  fp              2    2[BANK0 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       9       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_putch
;; This function is called by:
;;		_pad
;;		_vfpfcnvrt
;;		_fputs
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_fputc.c"
	line	8
global __ptext10
__ptext10:	;psect for function _fputc
psect	text10
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\nf_fputc.c"
	line	8
	
_fputc:	
;incstack = 0
	callstack 0
; Regs used in _fputc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	12
	
l3466:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((fputc@fp)),w
iorwf	((fputc@fp+1)),w
	btfsc	status,2
	goto	u5171
	goto	u5170
u5171:
	goto	l3470
u5170:
	
l3468:	
	movf	((fputc@fp)),w
iorwf	((fputc@fp+1)),w
	btfss	status,2
	goto	u5181
	goto	u5180
u5181:
	goto	l3472
u5180:
	line	13
	
l3470:	
	movf	(fputc@c),w
	fcall	_putch
	line	14
	goto	l887
	line	15
	
l3472:	
	movf	(fputc@fp),w
	addlw	low(09h)
	movwf	(??_fputc+0)+0
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(09h)
	movwf	1+(??_fputc+0)+0
	movf	0+(??_fputc+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_fputc+0)+0,0
	bcf	status,7
	movf	indf,w
	movwf	(??_fputc+2)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_fputc+2)+0+1
	movf	((??_fputc+2)+0),w
iorwf	((??_fputc+2)+1),w
	btfsc	status,2
	goto	u5191
	goto	u5190
u5191:
	goto	l3476
u5190:
	
l3474:	
	movf	(fputc@fp),w
	addlw	low(09h)
	movwf	(??_fputc+0)+0
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(09h)
	movwf	1+(??_fputc+0)+0
	movf	0+(??_fputc+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_fputc+0)+0,0
	bcf	status,7
	movf	indf,w
	movwf	(??_fputc+2)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_fputc+2)+0+1
	movf	(fputc@fp),w
	addlw	low(02h)
	movwf	(??_fputc+4)+0
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(??_fputc+4)+0
	movf	0+(??_fputc+4)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_fputc+4)+0,0
	bcf	status,7
	movf	indf,w
	movwf	(??_fputc+6)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_fputc+6)+0+1
	movf	1+(??_fputc+6)+0,w
	xorlw	80h
	movwf	(??_fputc+8)+0
	movf	1+(??_fputc+2)+0,w
	xorlw	80h
	subwf	(??_fputc+8)+0,w
	skipz
	goto	u5205
	movf	0+(??_fputc+2)+0,w
	subwf	0+(??_fputc+6)+0,w
u5205:

	skipnc
	goto	u5201
	goto	u5200
u5201:
	goto	l887
u5200:
	line	18
	
l3476:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(fputc@fp),w
	movwf	fsr0
	bsf	status,7
	btfss	(fputc@fp+1),0
	bcf	status,7
	movf	indf,w
	movwf	(??_fputc+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_fputc+0)+0+1
	movf	(fputc@fp),w
	addlw	low(02h)
	movwf	(??_fputc+2)+0
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(??_fputc+2)+0
	movf	0+(??_fputc+2)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_fputc+2)+0,0
	bcf	status,7
	movf	indf,w
	addwf	0+(??_fputc+0)+0,w
	movwf	(??_fputc+5)+0
	movf	1+(??_fputc+0)+0,w
	movwf	(??_fputc+4)+0
	skipnc
	incf	(??_fputc+4)+0,f
	btfss	indf,7
	goto	u5210
	decf	(??_fputc+4)+0,f
u5210:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_fputc+4)+0,w
	movwf	0+((??_fputc+5)+0)+1
	movf	0+(??_fputc+5)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_fputc+5)+0,0
	bcf	status,7
	movf	(fputc@c),w
	movwf	indf
	line	20
	movf	(fputc@fp),w
	addlw	low(02h)
	movwf	(??_fputc+0)+0
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(??_fputc+0)+0
	movf	0+(??_fputc+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_fputc+0)+0,0
	bcf	status,7
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	24
	
l887:	
	return
	callstack 0
GLOBAL	__end_of_fputc
	__end_of_fputc:
	signat	_fputc,8314
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\putch.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fputc
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\putch.c"
	line	7
global __ptext11
__ptext11:	;psect for function _putch
psect	text11
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\putch.c"
	line	7
	
_putch:	
;incstack = 0
	callstack 0
; Regs used in _putch: [wreg]
	line	9
	
l898:	
	return
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_memcpy

;; *************** function _memcpy *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\memcpy.c"
;; Parameters:    Size  Location     Type
;;  d1              1    0[BANK0 ] PTR void 
;;		 -> dbuf(80), 
;;  s1              1    1[BANK0 ] PTR const void 
;;		 -> dbuf(80), 
;;  n               2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  s               1    6[BANK0 ] PTR const unsigned char 
;;		 -> dbuf(80), 
;;  d               1    5[BANK0 ] PTR unsigned char 
;;		 -> dbuf(80), 
;;  tmp             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    0[BANK0 ] PTR void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\memcpy.c"
	line	4
global __ptext12
__ptext12:	;psect for function _memcpy
psect	text12
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\memcpy.c"
	line	4
	
_memcpy:	
;incstack = 0
	callstack 0
; Regs used in _memcpy: [wreg-fsr0h+status,2+status,0]
	line	11
	
l3540:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(memcpy@s1),w
	movwf	(memcpy@s)
	line	12
	movf	(memcpy@d1),w
	movwf	(memcpy@d)
	line	13
	goto	l872
	line	14
	
l3542:	
	movf	(memcpy@s),w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(memcpy@tmp)
	
l3544:	
	movlw	low(01h)
	addwf	(memcpy@s),f
	line	15
	
l3546:	
	movf	(memcpy@d),w
	movwf	fsr0
	movf	(memcpy@tmp),w
	movwf	indf
	movlw	low(01h)
	addwf	(memcpy@d),f
	line	16
	
l872:	
	line	13
	movlw	01h
	subwf	(memcpy@n),f
	movlw	0
	skipc
	decf	(memcpy@n+1),f
	subwf	(memcpy@n+1),f
		incf	(((memcpy@n))),w
	skipz
	goto	u5321
	incf	(((memcpy@n+1))),w
	btfss	status,2
	goto	u5321
	goto	u5320
u5321:
	goto	l3542
u5320:
	line	18
	
l875:	
	return
	callstack 0
GLOBAL	__end_of_memcpy
	__end_of_memcpy:
	signat	_memcpy,12409
	global	_labs

;; *************** function _labs *****************
;; Defined at:
;;		line 1 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\labs.c"
;; Parameters:    Size  Location     Type
;;  a               4    0[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\labs.c"
	line	1
global __ptext13
__ptext13:	;psect for function _labs
psect	text13
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\labs.c"
	line	1
	
_labs:	
;incstack = 0
	callstack 0
; Regs used in _labs: [wreg+status,2+status,0]
	line	3
	
l3532:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(labs@a+3),7
	goto	u5311
	goto	u5310
u5311:
	goto	l3536
u5310:
	
l3534:	
	goto	l869
	
l3536:	
	comf	(labs@a)+0,w
	movwf	(?_labs)
	comf	(labs@a)+1,w
	movwf	(?_labs+1)
	comf	(labs@a)+2,w
	movwf	(?_labs+2)
	comf	(labs@a)+3,w
	movwf	(?_labs+3)
	incf	(?_labs),f
	skipnz
	incf	(?_labs+1),f
	skipnz
	incf	(?_labs+2),f
	skipnz
	incf	(?_labs+3),f
	line	4
	
l869:	
	return
	callstack 0
GLOBAL	__end_of_labs
	__end_of_labs:
	signat	_labs,4220
	global	_floorf

;; *************** function _floorf *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\floorf.c"
;; Parameters:    Size  Location     Type
;;  x               4   66[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  u               4    6[BANK1 ] struct .
;;  m               4    0[BANK1 ] unsigned long 
;;  e               2    4[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  4   66[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0      10       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      10      10       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\floorf.c"
	line	3
global __ptext14
__ptext14:	;psect for function _floorf
psect	text14
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\floorf.c"
	line	3
	
_floorf:	
;incstack = 0
	callstack 0
; Regs used in _floorf: [wreg+status,2+status,0+btemp+1]
	line	5
	
l2850:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(floorf@F521+3)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@u+3)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(floorf@F521+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@u+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(floorf@F521+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@u+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(floorf@F521)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@u)^080h

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floorf@x+3),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@u+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floorf@x+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@u+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floorf@x+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@u+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floorf@x),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@u)^080h

	line	6
	
l2852:	
	movf	(floorf@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_floorf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+3)
	movlw	017h
u4175:
	clrc
	rrf	(??_floorf+0)+3,f
	rrf	(??_floorf+0)+2,f
	rrf	(??_floorf+0)+1,f
	rrf	(??_floorf+0)+0,f
u4170:
	addlw	-1
	skipz
	goto	u4175
	movlw	0FFh
	andwf	0+(??_floorf+0)+0,w
	movwf	(??_floorf+4)+0
	movlw	0
	andwf	1+(??_floorf+0)+0,w
	movwf	1+(??_floorf+4)+0
	movf	0+(??_floorf+4)+0,w
	addlw	low(-127)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@e)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_floorf+4)+0,w
	skipnc
	addlw	1
	addlw	high(-127)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(floorf@e)^080h
	line	9
	
l2854:	
	movf	(floorf@e+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u4185
	movlw	017h
	subwf	(floorf@e)^080h,w
u4185:

	skipc
	goto	u4181
	goto	u4180
u4181:
	goto	l854
u4180:
	line	10
	
l2856:	
	goto	l855
	
l854:	
	line	11
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(floorf@e+1)^080h,7
	goto	u4191
	goto	u4190
u4191:
	goto	l2870
u4190:
	line	12
	
l2858:	
	incf	(floorf@e)^080h,w
	movwf	btemp+1
	movlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0)
	movlw	0FFh
	movwf	((??_floorf+0)+0+1)
	movlw	07Fh
	movwf	((??_floorf+0)+0+2)
	movlw	0
	movwf	((??_floorf+0)+0+3)
	goto	u4200
u4205:
	rlf	(??_floorf+0)+3,w
	rrf	(??_floorf+0)+3,f
	rrf	(??_floorf+0)+2,f
	rrf	(??_floorf+0)+1,f
	rrf	(??_floorf+0)+0,f
u4200:
	decfsz	btemp+1,f
	goto	u4205
	
	movf	3+(??_floorf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@m+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	2+(??_floorf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@m+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_floorf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@m+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_floorf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@m)^080h

	line	13
	
l2860:	
	movf	(floorf@m)^080h,w
	andwf	(floorf@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_floorf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@m+1)^080h,w
	andwf	(floorf@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@m+2)^080h,w
	andwf	(floorf@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@m+3)^080h,w
	andwf	(floorf@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+3)
	movf	3+(??_floorf+0)+0,w
	iorwf	2+(??_floorf+0)+0,w
	iorwf	1+(??_floorf+0)+0,w
	iorwf	0+(??_floorf+0)+0,w
	skipz
	goto	u4211
	goto	u4210
u4211:
	goto	l2864
u4210:
	goto	l2856
	line	16
	
l2864:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_floorf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+3)
	movlw	01Fh
u4225:
	clrc
	rrf	(??_floorf+0)+3,f
	rrf	(??_floorf+0)+2,f
	rrf	(??_floorf+0)+1,f
	rrf	(??_floorf+0)+0,f
u4220:
	addlw	-1
	skipz
	goto	u4225
	movf	3+(??_floorf+0)+0,w
	iorwf	2+(??_floorf+0)+0,w
	iorwf	1+(??_floorf+0)+0,w
	iorwf	0+(??_floorf+0)+0,w
	skipnz
	goto	u4231
	goto	u4230
u4231:
	goto	l2868
u4230:
	line	17
	
l2866:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@m)^080h,w
	addwf	(floorf@u)^080h,f
	movf	(floorf@m+1)^080h,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4241
	addwf	(floorf@u+1)^080h,f
u4241:
	movf	(floorf@m+2)^080h,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4242
	addwf	(floorf@u+2)^080h,f
u4242:
	movf	(floorf@m+3)^080h,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4243
	addwf	(floorf@u+3)^080h,f
u4243:

	line	18
	
l2868:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(floorf@m)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_floorf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(floorf@m+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(floorf@m+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(floorf@m+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+3)

	movf	0+(??_floorf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(floorf@u)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_floorf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(floorf@u+1)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	2+(??_floorf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(floorf@u+2)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	3+(??_floorf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(floorf@u+3)^080h,f
	line	19
	goto	l859
	line	21
	
l2870:	
	movf	(floorf@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_floorf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+3)
	movlw	01Fh
u4255:
	clrc
	rrf	(??_floorf+0)+3,f
	rrf	(??_floorf+0)+2,f
	rrf	(??_floorf+0)+1,f
	rrf	(??_floorf+0)+0,f
u4250:
	addlw	-1
	skipz
	goto	u4255
	movf	3+(??_floorf+0)+0,w
	iorwf	2+(??_floorf+0)+0,w
	iorwf	1+(??_floorf+0)+0,w
	iorwf	0+(??_floorf+0)+0,w
	skipz
	goto	u4261
	goto	u4260
u4261:
	goto	l2874
u4260:
	line	22
	
l2872:	
	movlw	high highword(0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@u+3)^080h
	movlw	low highword(0)
	movwf	(floorf@u+2)^080h
	movlw	high(0)
	movwf	(floorf@u+1)^080h
	movlw	low(0)
	movwf	(floorf@u)^080h

	goto	l859
	line	23
	
l2874:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_floorf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_floorf+0)+0+3)
	movlw	01h
u4275:
	clrc
	rlf	(??_floorf+0)+0,f
	rlf	(??_floorf+0)+1,f
	rlf	(??_floorf+0)+2,f
	rlf	(??_floorf+0)+3,f
u4270:
	addlw	-1
	skipz
	goto	u4275
	movf	3+(??_floorf+0)+0,w
	iorwf	2+(??_floorf+0)+0,w
	iorwf	1+(??_floorf+0)+0,w
	iorwf	0+(??_floorf+0)+0,w
	skipnz
	goto	u4281
	goto	u4280
u4281:
	goto	l859
u4280:
	line	24
	
l2876:	
	movlw	0xbf
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(floorf@u+3)^080h
	movlw	0x80
	movwf	(floorf@u+2)^080h
	movlw	0x0
	movwf	(floorf@u+1)^080h
	movlw	0x0
	movwf	(floorf@u)^080h

	line	25
	
l859:	
	line	26
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floorf+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floorf+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floorf+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floorf@u)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floorf)

	line	27
	
l855:	
	return
	callstack 0
GLOBAL	__end_of_floorf
	__end_of_floorf:
	signat	_floorf,4220
	global	___fpclassifyf

;; *************** function ___fpclassifyf *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\__fpclassifyf.c"
;; Parameters:    Size  Location     Type
;;  x               4    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  u               4   12[BANK0 ] struct .
;;  e               2   10[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\__fpclassifyf.c"
	line	4
global __ptext15
__ptext15:	;psect for function ___fpclassifyf
psect	text15
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\__fpclassifyf.c"
	line	4
	
___fpclassifyf:	
;incstack = 0
	callstack 0
; Regs used in ___fpclassifyf: [wreg+status,2+status,0]
	line	6
	
l2814:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___fpclassifyf@F465+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fpclassifyf@u+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___fpclassifyf@F465+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fpclassifyf@u+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___fpclassifyf@F465+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fpclassifyf@u+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___fpclassifyf@F465)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fpclassifyf@u)

	movf	(___fpclassifyf@x+3),w
	movwf	(___fpclassifyf@u+3)
	movf	(___fpclassifyf@x+2),w
	movwf	(___fpclassifyf@u+2)
	movf	(___fpclassifyf@x+1),w
	movwf	(___fpclassifyf@u+1)
	movf	(___fpclassifyf@x),w
	movwf	(___fpclassifyf@u)

	line	7
	
l2816:	
	movf	(___fpclassifyf@u),w
	movwf	(??___fpclassifyf+0)+0
	movf	(___fpclassifyf@u+1),w
	movwf	((??___fpclassifyf+0)+0+1)
	movf	(___fpclassifyf@u+2),w
	movwf	((??___fpclassifyf+0)+0+2)
	movf	(___fpclassifyf@u+3),w
	movwf	((??___fpclassifyf+0)+0+3)
	movlw	017h
u4075:
	clrc
	rrf	(??___fpclassifyf+0)+3,f
	rrf	(??___fpclassifyf+0)+2,f
	rrf	(??___fpclassifyf+0)+1,f
	rrf	(??___fpclassifyf+0)+0,f
u4070:
	addlw	-1
	skipz
	goto	u4075
	movlw	0FFh
	andwf	0+(??___fpclassifyf+0)+0,w
	movwf	(___fpclassifyf@e)
	movlw	0
	andwf	1+(??___fpclassifyf+0)+0,w
	movwf	1+(___fpclassifyf@e)
	line	8
	
l2818:	
	movf	((___fpclassifyf@e)),w
iorwf	((___fpclassifyf@e+1)),w
	btfss	status,2
	goto	u4081
	goto	u4080
u4081:
	goto	l2828
u4080:
	
l2820:	
	movf	(___fpclassifyf@u),w
	movwf	(??___fpclassifyf+0)+0
	movf	(___fpclassifyf@u+1),w
	movwf	((??___fpclassifyf+0)+0+1)
	movf	(___fpclassifyf@u+2),w
	movwf	((??___fpclassifyf+0)+0+2)
	movf	(___fpclassifyf@u+3),w
	movwf	((??___fpclassifyf+0)+0+3)
	movlw	01h
u4095:
	clrc
	rlf	(??___fpclassifyf+0)+0,f
	rlf	(??___fpclassifyf+0)+1,f
	rlf	(??___fpclassifyf+0)+2,f
	rlf	(??___fpclassifyf+0)+3,f
u4090:
	addlw	-1
	skipz
	goto	u4095
	movf	3+(??___fpclassifyf+0)+0,w
	iorwf	2+(??___fpclassifyf+0)+0,w
	iorwf	1+(??___fpclassifyf+0)+0,w
	iorwf	0+(??___fpclassifyf+0)+0,w
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l2824
u4100:
	
l2822:	
	movlw	02h
	movwf	(?___fpclassifyf)
	movlw	0
	movwf	((?___fpclassifyf))+1
	goto	l848
	
l2824:	
	movlw	03h
	movwf	(?___fpclassifyf)
	movlw	0
	movwf	((?___fpclassifyf))+1
	goto	l848
	line	9
	
l2828:	
		incf	((___fpclassifyf@e)),w
iorwf	((___fpclassifyf@e+1)),w
	btfss	status,2
	goto	u4111
	goto	u4110
u4111:
	goto	l2834
u4110:
	
l2830:	
	movf	(___fpclassifyf@u),w
	movwf	(??___fpclassifyf+0)+0
	movf	(___fpclassifyf@u+1),w
	movwf	((??___fpclassifyf+0)+0+1)
	movf	(___fpclassifyf@u+2),w
	movwf	((??___fpclassifyf+0)+0+2)
	movf	(___fpclassifyf@u+3),w
	movwf	((??___fpclassifyf+0)+0+3)
	movlw	09h
u4125:
	clrc
	rlf	(??___fpclassifyf+0)+0,f
	rlf	(??___fpclassifyf+0)+1,f
	rlf	(??___fpclassifyf+0)+2,f
	rlf	(??___fpclassifyf+0)+3,f
u4120:
	addlw	-1
	skipz
	goto	u4125
	movf	3+(??___fpclassifyf+0)+0,w
	iorwf	2+(??___fpclassifyf+0)+0,w
	iorwf	1+(??___fpclassifyf+0)+0,w
	iorwf	0+(??___fpclassifyf+0)+0,w
	skipnz
	goto	u4131
	goto	u4130
u4131:
	movlw	1
	goto	u4140
u4130:
	movlw	0
u4140:
	movwf	(??___fpclassifyf+4)+0
	clrf	(??___fpclassifyf+4)+0+1
	movf	0+(??___fpclassifyf+4)+0,w
	movwf	(?___fpclassifyf)
	movf	1+(??___fpclassifyf+4)+0,w
	movwf	(?___fpclassifyf+1)
	goto	l848
	line	10
	
l2834:	
	movlw	04h
	movwf	(?___fpclassifyf)
	movlw	0
	movwf	((?___fpclassifyf))+1
	line	11
	
l848:	
	return
	callstack 0
GLOBAL	__end_of___fpclassifyf
	__end_of___fpclassifyf:
	signat	___fpclassifyf,4218
	global	___fltol

;; *************** function ___fltol *****************
;; Defined at:
;;		line 43 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\fltol.c"
;; Parameters:    Size  Location     Type
;;  f1              4    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  exp1            1    9[BANK0 ] unsigned char 
;;  sign1           1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\fltol.c"
	line	43
global __ptext16
__ptext16:	;psect for function ___fltol
psect	text16
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\fltol.c"
	line	43
	
___fltol:	
;incstack = 0
	callstack 0
; Regs used in ___fltol: [wreg+status,2+status,0]
	line	47
	
l2474:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rlf	(___fltol@f1+2),w
	rlf	(___fltol@f1+3),w
	movwf	(___fltol@exp1)
	movf	(((___fltol@exp1))),w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l2480
u3290:
	line	48
	
l2476:	
	movlw	high highword(0)
	movwf	(?___fltol+3)
	movlw	low highword(0)
	movwf	(?___fltol+2)
	movlw	high(0)
	movwf	(?___fltol+1)
	movlw	low(0)
	movwf	(?___fltol)

	goto	l451
	line	49
	
l2480:	
	movf	(___fltol@f1),w
	movwf	(??___fltol+0)+0
	movf	(___fltol@f1+1),w
	movwf	((??___fltol+0)+0+1)
	movf	(___fltol@f1+2),w
	movwf	((??___fltol+0)+0+2)
	movf	(___fltol@f1+3),w
	movwf	((??___fltol+0)+0+3)
	movlw	01Fh
u3305:
	clrc
	rrf	(??___fltol+0)+3,f
	rrf	(??___fltol+0)+2,f
	rrf	(??___fltol+0)+1,f
	rrf	(??___fltol+0)+0,f
u3300:
	addlw	-1
	skipz
	goto	u3305
	movf	0+(??___fltol+0)+0,w
	movwf	(___fltol@sign1)
	line	50
	
l2482:	
	bsf	(___fltol@f1)+(23/8),(23)&7
	line	51
	
l2484:	
	movlw	0FFh
	andwf	(___fltol@f1),f
	movlw	0FFh
	andwf	(___fltol@f1+1),f
	movlw	0FFh
	andwf	(___fltol@f1+2),f
	movlw	0
	andwf	(___fltol@f1+3),f
	line	52
	
l2486:	
	movlw	096h
	subwf	(___fltol@exp1),f
	line	53
	
l2488:	
	btfss	(___fltol@exp1),7
	goto	u3311
	goto	u3310
u3311:
	goto	l2498
u3310:
	line	54
	
l2490:	
	movf	(___fltol@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u3321
	goto	u3320
u3321:
	goto	l2496
u3320:
	goto	l2476
	line	57
	
l2496:	
	movlw	01h
u3335:
	clrc
	rrf	(___fltol@f1+3),f
	rrf	(___fltol@f1+2),f
	rrf	(___fltol@f1+1),f
	rrf	(___fltol@f1),f
	addlw	-1
	skipz
	goto	u3335

	movlw	low(01h)
	addwf	(___fltol@exp1),f
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l2496
u3340:
	goto	l2506
	line	60
	
l2498:	
	movlw	low(020h)
	subwf	(___fltol@exp1),w
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l458
u3350:
	goto	l2476
	line	63
	
l2504:	
	movlw	01h
	movwf	(??___fltol+0)+0
u3365:
	clrc
	rlf	(___fltol@f1),f
	rlf	(___fltol@f1+1),f
	rlf	(___fltol@f1+2),f
	rlf	(___fltol@f1+3),f
	decfsz	(??___fltol+0)+0
	goto	u3365
	line	64
	movlw	01h
	subwf	(___fltol@exp1),f
	line	65
	
l458:	
	line	62
	movf	((___fltol@exp1)),w
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l2504
u3370:
	line	67
	
l2506:	
	movf	((___fltol@sign1)),w
	btfsc	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l461
u3380:
	line	68
	
l2508:	
	comf	(___fltol@f1),f
	comf	(___fltol@f1+1),f
	comf	(___fltol@f1+2),f
	comf	(___fltol@f1+3),f
	incf	(___fltol@f1),f
	skipnz
	incf	(___fltol@f1+1),f
	skipnz
	incf	(___fltol@f1+2),f
	skipnz
	incf	(___fltol@f1+3),f
	
l461:	
	line	69
	line	70
	
l451:	
	return
	callstack 0
GLOBAL	__end_of___fltol
	__end_of___fltol:
	signat	___fltol,4220
	global	___flsub

;; *************** function ___flsub *****************
;; Defined at:
;;		line 242 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcadd.c"
;; Parameters:    Size  Location     Type
;;  a               4   40[BANK0 ] long 
;;  b               4   44[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   40[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___fladd
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcadd.c"
	line	242
global __ptext17
__ptext17:	;psect for function ___flsub
psect	text17
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcadd.c"
	line	242
	
___flsub:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in ___flsub: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	248
	
l3510:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___flsub@a+3),f
	line	249
	
l3512:	
	movf	(___flsub@b+3),w
	movwf	(___fladd@b+3)
	movf	(___flsub@b+2),w
	movwf	(___fladd@b+2)
	movf	(___flsub@b+1),w
	movwf	(___fladd@b+1)
	movf	(___flsub@b),w
	movwf	(___fladd@b)

	movf	(___flsub@a+3),w
	movwf	(___fladd@a+3)
	movf	(___flsub@a+2),w
	movwf	(___fladd@a+2)
	movf	(___flsub@a+1),w
	movwf	(___fladd@a+1)
	movf	(___flsub@a),w
	movwf	(___fladd@a)

	fcall	___fladd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fladd)),w
	movwf	(?___flsub+3)
	movf	(2+(?___fladd)),w
	movwf	(?___flsub+2)
	movf	(1+(?___fladd)),w
	movwf	(?___flsub+1)
	movf	(0+(?___fladd)),w
	movwf	(?___flsub)

	line	250
	
l604:	
	return
	callstack 0
GLOBAL	__end_of___flsub
	__end_of___flsub:
	signat	___flsub,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcadd.c"
;; Parameters:    Size  Location     Type
;;  b               4    0[BANK0 ] long 
;;  a               4    4[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  grs             1   19[BANK0 ] unsigned char 
;;  bexp            1   18[BANK0 ] unsigned char 
;;  aexp            1   17[BANK0 ] unsigned char 
;;  signs           1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       8       0       0       0
;;      Totals:         0      20       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___flsub
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=2
	line	10
global __ptext18
__ptext18:	;psect for function ___fladd
psect	text18
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcadd.c"
	line	10
	
___fladd:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in ___fladd: [wreg+status,2+status,0+btemp+1]
	line	21
	
l2200:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(___fladd@b)+03h,w
	movwf	(___fladd@signs)
	
l2202:	
	movlw	low(080h)
	andwf	(___fladd@signs),f
	line	22
	
l2204:	
	movf	0+(___fladd@b)+03h,w
	movwf	(??___fladd+0)+0
	addwf	(??___fladd+0)+0,w
	movwf	(___fladd@bexp)
	line	23
	
l2206:	
	btfss	0+(___fladd@b)+02h,(7)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l2210
u2640:
	line	24
	
l2208:	
	bsf	(___fladd@bexp)+(0/8),(0)&7
	line	28
	
l2210:	
	movf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2220
u2650:
	line	30
	
l2212:	
		incf	((___fladd@bexp)),w
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l2216
u2660:
	line	32
	
l2214:	
	movlw	0x0
	movwf	(___fladd@b+3)
	movlw	0x0
	movwf	(___fladd@b+2)
	movlw	0x0
	movwf	(___fladd@b+1)
	movlw	0x0
	movwf	(___fladd@b)

	line	35
	
l2216:	
	bsf	(___fladd@b)+(23/8),(23)&7
	line	37
	
l2218:	
	clrf	0+(___fladd@b)+03h
	line	38
	goto	l553
	line	41
	
l2220:	
	movlw	0x0
	movwf	(___fladd@b+3)
	movlw	0x0
	movwf	(___fladd@b+2)
	movlw	0x0
	movwf	(___fladd@b+1)
	movlw	0x0
	movwf	(___fladd@b)

	line	42
	
l553:	
	line	44
	movf	0+(___fladd@a)+03h,w
	movwf	(___fladd@aexp)
	
l2222:	
	movlw	low(080h)
	andwf	(___fladd@aexp),f
	line	46
	
l2224:	
	movf	(___fladd@aexp),w
	xorwf	(___fladd@signs),w
	skipnz
	goto	u2671
	goto	u2670
u2671:
	goto	l2228
u2670:
	line	47
	
l2226:	
	bsf	(___fladd@signs)+(6/8),(6)&7
	line	49
	
l2228:	
	movf	0+(___fladd@a)+03h,w
	movwf	(??___fladd+0)+0
	addwf	(??___fladd+0)+0,w
	movwf	(___fladd@aexp)
	line	50
	
l2230:	
	btfss	0+(___fladd@a)+02h,(7)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l2234
u2680:
	line	51
	
l2232:	
	bsf	(___fladd@aexp)+(0/8),(0)&7
	line	55
	
l2234:	
	movf	((___fladd@aexp)),w
	btfsc	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l2244
u2690:
	line	57
	
l2236:	
		incf	((___fladd@aexp)),w
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2240
u2700:
	line	59
	
l2238:	
	movlw	0x0
	movwf	(___fladd@a+3)
	movlw	0x0
	movwf	(___fladd@a+2)
	movlw	0x0
	movwf	(___fladd@a+1)
	movlw	0x0
	movwf	(___fladd@a)

	line	62
	
l2240:	
	bsf	(___fladd@a)+(23/8),(23)&7
	line	64
	
l2242:	
	clrf	0+(___fladd@a)+03h
	line	65
	goto	l558
	line	68
	
l2244:	
	movlw	0x0
	movwf	(___fladd@a+3)
	movlw	0x0
	movwf	(___fladd@a+2)
	movlw	0x0
	movwf	(___fladd@a+1)
	movlw	0x0
	movwf	(___fladd@a)

	line	69
	
l558:	
	line	75
	movf	(___fladd@bexp),w
	subwf	(___fladd@aexp),w
	skipnc
	goto	u2711
	goto	u2710
u2711:
	goto	l2280
u2710:
	line	77
	
l2246:	
	btfss	(___fladd@signs),(6)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l2250
u2720:
	line	78
	
l2248:	
	movlw	low(080h)
	xorwf	(___fladd@signs),f
	line	81
	
l2250:	
	movf	(___fladd@bexp),w
	movwf	(___fladd@grs)
	line	82
	
l2252:	
	movf	(___fladd@aexp),w
	movwf	(___fladd@bexp)
	line	83
	
l2254:	
	movf	(___fladd@grs),w
	movwf	(___fladd@aexp)
	line	84
	
l2256:	
	movf	(___fladd@b),w
	movwf	(___fladd@grs)
	line	85
	
l2258:	
	movf	(___fladd@a),w
	movwf	(___fladd@b)
	line	86
	
l2260:	
	movf	(___fladd@grs),w
	movwf	(___fladd@a)
	line	87
	
l2262:	
	movf	0+(___fladd@b)+01h,w
	movwf	(___fladd@grs)
	line	88
	
l2264:	
	movf	0+(___fladd@a)+01h,w
	movwf	0+(___fladd@b)+01h
	line	89
	
l2266:	
	movf	(___fladd@grs),w
	movwf	0+(___fladd@a)+01h
	line	90
	
l2268:	
	movf	0+(___fladd@b)+02h,w
	movwf	(___fladd@grs)
	line	91
	
l2270:	
	movf	0+(___fladd@a)+02h,w
	movwf	0+(___fladd@b)+02h
	line	92
	
l2272:	
	movf	(___fladd@grs),w
	movwf	0+(___fladd@a)+02h
	line	93
	
l2274:	
	movf	0+(___fladd@b)+03h,w
	movwf	(___fladd@grs)
	line	94
	
l2276:	
	movf	0+(___fladd@a)+03h,w
	movwf	0+(___fladd@b)+03h
	line	95
	
l2278:	
	movf	(___fladd@grs),w
	movwf	0+(___fladd@a)+03h
	line	98
	
l2280:	
	clrf	(___fladd@grs)
	line	100
	
l2282:	
	movf	(___fladd@aexp),w
	movwf	(??___fladd+0)+0
	clrf	(??___fladd+0)+0+1
	movf	1+(??___fladd+0)+0,w
	movwf	(??___fladd+2)+0+1
	movf	(___fladd@bexp),w
	subwf	0+(??___fladd+0)+0,w
	movwf	(??___fladd+2)+0
	skipc
	decf	(??___fladd+2)+0+1,f
	movf	1+(??___fladd+2)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2735
	movlw	01Ah
	subwf	0+(??___fladd+2)+0,w
u2735:

	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l2298
u2730:
	line	101
	
l2284:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fladd@b+3),w
	iorwf	(___fladd@b+2),w
	iorwf	(___fladd@b+1),w
	iorwf	(___fladd@b),w
	skipz
	goto	u2741
	goto	u2740
u2741:
	movlw	1
	goto	u2750
u2740:
	movlw	0
u2750:
	movwf	(___fladd@grs)
	line	102
	movlw	high highword(0)
	movwf	(___fladd@b+3)
	movlw	low highword(0)
	movwf	(___fladd@b+2)
	movlw	high(0)
	movwf	(___fladd@b+1)
	movlw	low(0)
	movwf	(___fladd@b)

	line	103
	movf	(___fladd@aexp),w
	movwf	(___fladd@bexp)
	line	104
	goto	l562
	line	106
	
l564:	
	line	109
	btfss	(___fladd@grs),(0)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l2288
u2760:
	line	110
	
l2286:	
	movf	(___fladd@grs),w
	movwf	(??___fladd+0)+0
	clrc
	rrf	(??___fladd+0)+0,w
	iorlw	01h
	movwf	(___fladd@grs)
	line	111
	goto	l2290
	line	113
	
l2288:	
	clrc
	rrf	(___fladd@grs),f

	line	115
	
l2290:	
	btfss	(___fladd@b),(0)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l2294
u2770:
	line	116
	
l2292:	
	bsf	(___fladd@grs)+(7/8),(7)&7
	line	118
	
l2294:	
	movlw	01h
	movwf	(??___fladd+0)+0
u2785:
	rlf	(___fladd@b+3),w
	rrf	(___fladd@b+3),f
	rrf	(___fladd@b+2),f
	rrf	(___fladd@b+1),f
	rrf	(___fladd@b),f
	decfsz	(??___fladd+0)+0&07fh,f
	goto	u2785

	line	119
	
l2296:	
	movlw	low(01h)
	addwf	(___fladd@bexp),f
	line	106
	
l2298:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fladd@aexp),w
	subwf	(___fladd@bexp),w
	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l564
u2790:
	line	121
	
l562:	
	line	124
	btfsc	(___fladd@signs),(6)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l2324
u2800:
	line	127
	
l2300:	
	movf	((___fladd@bexp)),w
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l2306
u2810:
	line	128
	
l2302:	
	movlw	0x0
	movwf	(?___fladd+3)
	movlw	0x0
	movwf	(?___fladd+2)
	movlw	0x0
	movwf	(?___fladd+1)
	movlw	0x0
	movwf	(?___fladd)

	goto	l571
	line	132
	
l2306:	
	movf	(___fladd@a),w
	addwf	(___fladd@b),f
	movf	(___fladd@a+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2821
	addwf	(___fladd@b+1),f
u2821:
	movf	(___fladd@a+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2822
	addwf	(___fladd@b+2),f
u2822:
	movf	(___fladd@a+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2823
	addwf	(___fladd@b+3),f
u2823:

	line	134
	
l2308:	
	btfss	(___fladd@b+3),(24)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l2360
u2830:
	line	135
	
l2310:	
	btfss	(___fladd@grs),(0)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l2314
u2840:
	line	136
	
l2312:	
	movf	(___fladd@grs),w
	movwf	(??___fladd+0)+0
	clrc
	rrf	(??___fladd+0)+0,w
	iorlw	01h
	movwf	(___fladd@grs)
	line	137
	goto	l2316
	line	139
	
l2314:	
	clrc
	rrf	(___fladd@grs),f

	line	141
	
l2316:	
	btfss	(___fladd@b),(0)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l2320
u2850:
	line	142
	
l2318:	
	bsf	(___fladd@grs)+(7/8),(7)&7
	line	144
	
l2320:	
	movlw	01h
	movwf	(??___fladd+0)+0
u2865:
	rlf	(___fladd@b+3),w
	rrf	(___fladd@b+3),f
	rrf	(___fladd@b+2),f
	rrf	(___fladd@b+1),f
	rrf	(___fladd@b),f
	decfsz	(??___fladd+0)+0&07fh,f
	goto	u2865

	line	145
	
l2322:	
	movlw	low(01h)
	addwf	(___fladd@bexp),f
	goto	l2360
	line	153
	
l2324:	
	movf	(___fladd@b+3),w
	xorlw	80h
	movwf	btemp+1
	movf	(___fladd@a+3),w
	xorlw	80h
	subwf	btemp+1,w
	
	skipz
	goto	u2873
	movf	(___fladd@a+2),w
	subwf	(___fladd@b+2),w
	skipz
	goto	u2873
	movf	(___fladd@a+1),w
	subwf	(___fladd@b+1),w
	skipz
	goto	u2873
	movf	(___fladd@a),w
	subwf	(___fladd@b),w
u2873:
	skipnc
	goto	u2871
	goto	u2870
u2871:
	goto	l2336
u2870:
	line	154
	
l2326:	
	movlw	0FFh
	movwf	((??___fladd+0)+0)
	movlw	0FFh
	movwf	((??___fladd+0)+0+1)
	movlw	0FFh
	movwf	((??___fladd+0)+0+2)
	movlw	0FFh
	movwf	((??___fladd+0)+0+3)
	movf	(___fladd@a),w
	movwf	(??___fladd+4)+0
	movf	(___fladd@a+1),w
	movwf	((??___fladd+4)+0+1)
	movf	(___fladd@a+2),w
	movwf	((??___fladd+4)+0+2)
	movf	(___fladd@a+3),w
	movwf	((??___fladd+4)+0+3)
	movf	(___fladd@b),w
	subwf	(??___fladd+4)+0,f
	movf	(___fladd@b+1),w
	skipc
	incfsz	(___fladd@b+1),w
	goto	u2881
	goto	u2882
u2881:
	subwf	(??___fladd+4)+1,f
u2882:
	movf	(___fladd@b+2),w
	skipc
	incfsz	(___fladd@b+2),w
	goto	u2883
	goto	u2884
u2883:
	subwf	(??___fladd+4)+2,f
u2884:
	movf	(___fladd@b+3),w
	skipc
	incfsz	(___fladd@b+3),w
	goto	u2885
	goto	u2886
u2885:
	subwf	(??___fladd+4)+3,f
u2886:

	movf	0+(??___fladd+4)+0,w
	addwf	(??___fladd+0)+0,f
	movf	1+(??___fladd+4)+0,w
	skipnc
	incfsz	1+(??___fladd+4)+0,w
	goto	u2890
	goto	u2891
u2890:
	addwf	(??___fladd+0)+1,f
u2891:
	movf	2+(??___fladd+4)+0,w
	skipnc
	incfsz	2+(??___fladd+4)+0,w
	goto	u2892
	goto	u2893
u2892:
	addwf	(??___fladd+0)+2,f
u2893:
	movf	3+(??___fladd+4)+0,w
	skipnc
	incf	3+(??___fladd+4)+0,w
	addwf	(??___fladd+0)+3,f
	movf	3+(??___fladd+0)+0,w
	movwf	(___fladd@b+3)
	movf	2+(??___fladd+0)+0,w
	movwf	(___fladd@b+2)
	movf	1+(??___fladd+0)+0,w
	movwf	(___fladd@b+1)
	movf	0+(??___fladd+0)+0,w
	movwf	(___fladd@b)

	line	155
	
l2328:	
	movlw	low(080h)
	xorwf	(___fladd@signs),f
	line	156
	
l2330:	
	decf	(___fladd@grs),w
	xorlw	0ffh
	movwf	(___fladd@grs)
	line	157
	
l2332:	
	movf	((___fladd@grs)),w
	btfss	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l579
u2900:
	line	158
	
l2334:	
	movlw	01h
	addwf	(___fladd@b),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+3),f
	goto	l579
	line	162
	
l2336:	
	movf	(___fladd@a),w
	subwf	(___fladd@b),f
	movf	(___fladd@a+1),w
	skipc
	incfsz	(___fladd@a+1),w
	subwf	(___fladd@b+1),f
	movf	(___fladd@a+2),w
	skipc
	incfsz	(___fladd@a+2),w
	subwf	(___fladd@b+2),f
	movf	(___fladd@a+3),w
	skipc
	incfsz	(___fladd@a+3),w
	subwf	(___fladd@b+3),f
	line	163
	
l579:	
	line	166
	movf	(___fladd@b+3),w
	iorwf	(___fladd@b+2),w
	iorwf	(___fladd@b+1),w
	iorwf	(___fladd@b),w
	skipz
	goto	u2911
	goto	u2910
u2911:
	goto	l2358
u2910:
	
l2338:	
	movf	((___fladd@grs)),w
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l2358
u2920:
	line	167
	
l2340:	
	movlw	0x0
	movwf	(?___fladd+3)
	movlw	0x0
	movwf	(?___fladd+2)
	movlw	0x0
	movwf	(?___fladd+1)
	movlw	0x0
	movwf	(?___fladd)

	goto	l571
	line	172
	
l2344:	
	movlw	01h
	movwf	(??___fladd+0)+0
u2935:
	clrc
	rlf	(___fladd@b),f
	rlf	(___fladd@b+1),f
	rlf	(___fladd@b+2),f
	rlf	(___fladd@b+3),f
	decfsz	(??___fladd+0)+0
	goto	u2935
	line	173
	
l2346:	
	btfss	(___fladd@grs),(7)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l583
u2940:
	line	174
	
l2348:	
	bsf	(___fladd@b)+(0/8),(0)&7
	line	175
	
l583:	
	line	176
	btfss	(___fladd@grs),(0)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l2352
u2950:
	line	177
	
l2350:	
	setc
	rlf	(___fladd@grs),w
	movwf	(___fladd@grs)
	line	178
	goto	l2354
	line	180
	
l2352:	
	clrc
	rlf	(___fladd@grs),f

	line	182
	
l2354:	
	movf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l2358
u2960:
	line	183
	
l2356:	
	movlw	01h
	subwf	(___fladd@bexp),f
	line	171
	
l2358:	
	btfss	(___fladd@b+2),(23)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l2344
u2970:
	line	192
	
l2360:	
	clrf	(___fladd@aexp)
	line	193
	
l2362:	
	btfss	(___fladd@grs),(7)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l2370
u2980:
	line	194
	
l2364:	
	movf	(___fladd@grs),w
	andlw	07Fh
	btfsc	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l589
u2990:
	line	195
	
l2366:	
	movlw	01h
	movwf	(___fladd@aexp)
	line	196
	goto	l2370
	line	197
	
l589:	
	line	198
	btfss	(___fladd@b),(0)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l2370
u3000:
	goto	l2366
	line	203
	
l2370:	
	movf	((___fladd@aexp)),w
	btfsc	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l592
u3010:
	line	204
	
l2372:	
	movlw	01h
	addwf	(___fladd@b),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+3),f
	line	205
	
l2374:	
	btfss	(___fladd@b+3),(24)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l592
u3020:
	line	206
	
l2376:	
	movf	(___fladd@b),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@b+1),w
	movwf	((??___fladd+0)+0+1)
	movf	(___fladd@b+2),w
	movwf	((??___fladd+0)+0+2)
	movf	(___fladd@b+3),w
	movwf	((??___fladd+0)+0+3)
	movlw	01h
	movwf	(??___fladd+4)+0
u3035:
	rlf	(??___fladd+0)+3,w
	rrf	(??___fladd+0)+3,f
	rrf	(??___fladd+0)+2,f
	rrf	(??___fladd+0)+1,f
	rrf	(??___fladd+0)+0,f
u3030:
	decfsz	(??___fladd+4)+0,f
	goto	u3035
	movf	3+(??___fladd+0)+0,w
	movwf	(___fladd@b+3)
	movf	2+(??___fladd+0)+0,w
	movwf	(___fladd@b+2)
	movf	1+(??___fladd+0)+0,w
	movwf	(___fladd@b+1)
	movf	0+(??___fladd+0)+0,w
	movwf	(___fladd@b)

	line	207
		incf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l592
u3040:
	line	208
	
l2378:	
	movlw	low(01h)
	addwf	(___fladd@bexp),f
	line	211
	
l592:	
	line	215
		incf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l2382
u3050:
	
l2380:	
	movf	((___fladd@bexp)),w
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l2388
u3060:
	line	216
	
l2382:	
	movlw	high highword(0)
	movwf	(___fladd@b+3)
	movlw	low highword(0)
	movwf	(___fladd@b+2)
	movlw	high(0)
	movwf	(___fladd@b+1)
	movlw	low(0)
	movwf	(___fladd@b)

	line	218
	
l2384:	
	movf	((___fladd@bexp)),w
	btfss	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l2388
u3070:
	line	219
	
l2386:	
	clrf	(___fladd@signs)
	line	225
	
l2388:	
	btfss	(___fladd@bexp),(0)&7
	goto	u3081
	goto	u3080
u3081:
	goto	l2392
u3080:
	line	226
	
l2390:	
	bsf	0+(___fladd@b)+02h+(7/8),(7)&7
	line	227
	goto	l600
	line	230
	
l2392:	
	movlw	low(07Fh)
	andwf	0+(___fladd@b)+02h,f
	line	231
	
l600:	
	line	232
	movf	(___fladd@bexp),w
	movwf	(??___fladd+0)+0
	clrc
	rrf	(??___fladd+0)+0,w
	movwf	0+(___fladd@b)+03h
	line	233
	
l2394:	
	btfss	(___fladd@signs),(7)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l601
u3090:
	line	234
	
l2396:	
	bsf	0+(___fladd@b)+03h+(7/8),(7)&7
	line	235
	
l601:	
	line	236
	line	237
	
l571:	
	return
	callstack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
	signat	___fladd,8316
	global	___flneg

;; *************** function ___flneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\flneg.c"
;; Parameters:    Size  Location     Type
;;  f1              4    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\flneg.c"
	line	15
global __ptext19
__ptext19:	;psect for function ___flneg
psect	text19
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\flneg.c"
	line	15
	
___flneg:	
;incstack = 0
	callstack 0
; Regs used in ___flneg: [wreg]
	line	17
	
l3502:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flneg@f1+3),w
	iorwf	(___flneg@f1+2),w
	iorwf	(___flneg@f1+1),w
	iorwf	(___flneg@f1),w
	skipnz
	goto	u5271
	goto	u5270
u5271:
	goto	l3506
u5270:
	line	18
	
l3504:	
	movlw	080h
	xorwf	(___flneg@f1+3),f
	line	19
	
l3506:	
	line	20
	
l447:	
	return
	callstack 0
GLOBAL	__end_of___flneg
	__end_of___flneg:
	signat	___flneg,4220
	global	___fleq

;; *************** function ___fleq *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\fleq.c"
;; Parameters:    Size  Location     Type
;;  ff1             4    0[BANK0 ] unsigned char 
;;  ff2             4    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\fleq.c"
	line	4
global __ptext20
__ptext20:	;psect for function ___fleq
psect	text20
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\fleq.c"
	line	4
	
___fleq:	
;incstack = 0
	callstack 0
; Regs used in ___fleq: [wreg+status,2+status,0]
	line	7
	
l2434:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(___fleq@ff1),w
	movwf	(??___fleq+0)+0
	movlw	0
	andwf	(___fleq@ff1+1),w
	movwf	((??___fleq+0)+0+1)
	movlw	080h
	andwf	(___fleq@ff1+2),w
	movwf	((??___fleq+0)+0+2)
	movlw	07Fh
	andwf	(___fleq@ff1+3),w
	movwf	((??___fleq+0)+0+3)
	movf	3+(??___fleq+0)+0,w
	iorwf	2+(??___fleq+0)+0,w
	iorwf	1+(??___fleq+0)+0,w
	iorwf	0+(??___fleq+0)+0,w
	skipz
	goto	u3181
	goto	u3180
u3181:
	goto	l426
u3180:
	line	8
	
l2436:	
	movlw	high highword(0)
	movwf	(___fleq@ff1+3)
	movlw	low highword(0)
	movwf	(___fleq@ff1+2)
	movlw	high(0)
	movwf	(___fleq@ff1+1)
	movlw	low(0)
	movwf	(___fleq@ff1)

	
l426:	
	line	9
	movlw	0
	andwf	(___fleq@ff2),w
	movwf	(??___fleq+0)+0
	movlw	0
	andwf	(___fleq@ff2+1),w
	movwf	((??___fleq+0)+0+1)
	movlw	080h
	andwf	(___fleq@ff2+2),w
	movwf	((??___fleq+0)+0+2)
	movlw	07Fh
	andwf	(___fleq@ff2+3),w
	movwf	((??___fleq+0)+0+3)
	movf	3+(??___fleq+0)+0,w
	iorwf	2+(??___fleq+0)+0,w
	iorwf	1+(??___fleq+0)+0,w
	iorwf	0+(??___fleq+0)+0,w
	skipz
	goto	u3191
	goto	u3190
u3191:
	goto	l427
u3190:
	line	10
	
l2438:	
	movlw	high highword(0)
	movwf	(___fleq@ff2+3)
	movlw	low highword(0)
	movwf	(___fleq@ff2+2)
	movlw	high(0)
	movwf	(___fleq@ff2+1)
	movlw	low(0)
	movwf	(___fleq@ff2)

	
l427:	
	line	11
	movf	(___fleq@ff2+3),w
	xorwf	(___fleq@ff1+3),w
	skipz
	goto	u3205
	movf	(___fleq@ff2+2),w
	xorwf	(___fleq@ff1+2),w
	skipz
	goto	u3205
	movf	(___fleq@ff2+1),w
	xorwf	(___fleq@ff1+1),w
	skipz
	goto	u3205
	movf	(___fleq@ff2),w
	xorwf	(___fleq@ff1),w
u3205:
	skipnz
	goto	u3201
	goto	u3200
u3201:
	goto	l2442
u3200:
	
l2440:	
	clrc
	
	goto	l432
	
l2442:	
	setc
	
	line	12
	
l432:	
	return
	callstack 0
GLOBAL	__end_of___fleq
	__end_of___fleq:
	signat	___fleq,8312
	global	_UART_Write_String

;; *************** function _UART_Write_String *****************
;; Defined at:
;;		line 53 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;  str             2    1[BANK0 ] PTR const unsigned char 
;;		 -> STR_11(5), STR_10(5), main@tempStr(20), STR_8(5), 
;;		 -> STR_7(5), STR_6(18), STR_5(29), STR_4(33), 
;;		 -> STR_3(26), STR_2(17), STR_1(16), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_UART_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"./src/main.c"
	line	53
global __ptext21
__ptext21:	;psect for function _UART_Write_String
psect	text21
	file	"./src/main.c"
	line	53
	
_UART_Write_String:	
;incstack = 0
	callstack 3
; Regs used in _UART_Write_String: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	54
	
l3852:	
	goto	l3858
	line	55
	
l3854:	
	movf	(UART_Write_String@str+1),w
	movwf	btemp+1
	movf	(UART_Write_String@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_UART_Write
	
l3856:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(UART_Write_String@str),f
	skipnc
	incf	(UART_Write_String@str+1),f
	movlw	0
	addwf	(UART_Write_String@str+1),f
	line	54
	
l3858:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(UART_Write_String@str+1),w
	movwf	btemp+1
	movf	(UART_Write_String@str),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u5751
	goto	u5750
u5751:
	goto	l3854
u5750:
	line	57
	
l93:	
	return
	callstack 0
GLOBAL	__end_of_UART_Write_String
	__end_of_UART_Write_String:
	signat	_UART_Write_String,4217
	global	_UART_Write

;; *************** function _UART_Write *****************
;; Defined at:
;;		line 47 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_Write_String
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	47
global __ptext22
__ptext22:	;psect for function _UART_Write
psect	text22
	file	"./src/main.c"
	line	47
	
_UART_Write:	
;incstack = 0
	callstack 3
; Regs used in _UART_Write: [wreg]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UART_Write@data)
	line	48
	
l3836:	
	
l84:	
	btfss	(100/8),(100)&7	;volatile
	goto	u5731
	goto	u5730
u5731:
	goto	l84
u5730:
	line	49
	
l3838:	
	movf	(UART_Write@data),w
	movwf	(25)	;volatile
	line	50
	
l87:	
	return
	callstack 0
GLOBAL	__end_of_UART_Write
	__end_of_UART_Write:
	signat	_UART_Write,4217
	global	_UART_Init

;; *************** function _UART_Init *****************
;; Defined at:
;;		line 37 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	37
global __ptext23
__ptext23:	;psect for function _UART_Init
psect	text23
	file	"./src/main.c"
	line	37
	
_UART_Init:	
;incstack = 0
	callstack 4
; Regs used in _UART_Init: []
	line	38
	
l3850:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7	;volatile
	line	39
	bcf	(1086/8)^080h,(1086)&7	;volatile
	line	41
	movlw	01Fh
	movwf	(153)^080h	;volatile
	line	42
	movlw	024h
	movwf	(152)^080h	;volatile
	line	43
	movlw	090h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	44
	
l81:	
	return
	callstack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
	signat	_UART_Init,89
	global	_Toggle_Lock_State

;; *************** function _Toggle_Lock_State *****************
;; Defined at:
;;		line 126 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	126
global __ptext24
__ptext24:	;psect for function _Toggle_Lock_State
psect	text24
	file	"./src/main.c"
	line	126
	
_Toggle_Lock_State:	
;incstack = 0
	callstack 4
; Regs used in _Toggle_Lock_State: [wreg+status,2+status,0]
	line	127
	
l3872:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((_currentState)^0180h),w
	btfss	status,2
	goto	u5771
	goto	u5770
u5771:
	goto	l3876
u5770:
	line	128
	
l3874:	
	movlw	01h
	movwf	(_currentState)^0180h
	line	129
	movlw	01h
	movwf	(_servo_needs_update)^0180h	;volatile
	line	130
	goto	l128
	line	131
	
l3876:	
	clrf	(_currentState)^0180h
	line	132
	
l3878:	
	movlw	01h
	movwf	(_servo_needs_update)^0180h	;volatile
	line	134
	
l128:	
	return
	callstack 0
GLOBAL	__end_of_Toggle_Lock_State
	__end_of_Toggle_Lock_State:
	signat	_Toggle_Lock_State,89
	global	_Servo_Init

;; *************** function _Servo_Init *****************
;; Defined at:
;;		line 120 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	120
global __ptext25
__ptext25:	;psect for function _Servo_Init
psect	text25
	file	"./src/main.c"
	line	120
	
_Servo_Init:	
;incstack = 0
	callstack 4
; Regs used in _Servo_Init: []
	line	121
	
l3870:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7	;volatile
	line	122
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	123
	
l123:	
	return
	callstack 0
GLOBAL	__end_of_Servo_Init
	__end_of_Servo_Init:
	signat	_Servo_Init,89
	global	_Read_Temperature

;; *************** function _Read_Temperature *****************
;; Defined at:
;;		line 67 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adcValue        2   76[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  4   66[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___fldiv
;;		___flmul
;;		___xxtofl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	67
global __ptext26
__ptext26:	;psect for function _Read_Temperature
psect	text26
	file	"./src/main.c"
	line	67
	
_Read_Temperature:	
;incstack = 0
	callstack 2
; Regs used in _Read_Temperature: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	68
	
l3272:	
	asmopt push
asmopt off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Read_Temperature+0)+0+1)
	movlw	251
movwf	((??_Read_Temperature+0)+0)
	u5997:
decfsz	((??_Read_Temperature+0)+0),f
	goto	u5997
	decfsz	((??_Read_Temperature+0)+0+1),f
	goto	u5997
asmopt pop

	line	69
	
l3274:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	70
	
l99:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u4901
	goto	u4900
u4901:
	goto	l99
u4900:
	line	73
	
l3276:	
	movf	(30),w	;volatile
	movwf	(Read_Temperature@adcValue+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Read_Temperature@adcValue)
	line	76
	
l3278:	
	movlw	0x40
	movwf	(___flmul@b+3)
	movlw	0xa0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	movf	(Read_Temperature@adcValue),w
	movwf	(___xxtofl@val)
	movf	(Read_Temperature@adcValue+1),w
	movwf	(___xxtofl@val+1)
	movlw	0
	btfsc	(___xxtofl@val+1),7
	movlw	255
	movwf	(___xxtofl@val+2)
	movwf	(___xxtofl@val+3)
	movlw	low(01h)
	fcall	___xxtofl
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___xxtofl)),w
	movwf	(___flmul@a+3)
	movf	(2+(?___xxtofl)),w
	movwf	(___flmul@a+2)
	movf	(1+(?___xxtofl)),w
	movwf	(___flmul@a+1)
	movf	(0+(?___xxtofl)),w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(_Read_Temperature$1034+3)
	movf	(2+(?___flmul)),w
	movwf	(_Read_Temperature$1034+2)
	movf	(1+(?___flmul)),w
	movwf	(_Read_Temperature$1034+1)
	movf	(0+(?___flmul)),w
	movwf	(_Read_Temperature$1034)

	
l3280:	
	movlw	0x44
	movwf	(___fldiv@a+3)
	movlw	0x80
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	movlw	0x42
	movwf	(___flmul@b+3)
	movlw	0xc8
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	movf	(_Read_Temperature$1034+3),w
	movwf	(___flmul@a+3)
	movf	(_Read_Temperature$1034+2),w
	movwf	(___flmul@a+2)
	movf	(_Read_Temperature$1034+1),w
	movwf	(___flmul@a+1)
	movf	(_Read_Temperature$1034),w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@b+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@b+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@b+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@b)

	fcall	___fldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fldiv)),w
	movwf	(?_Read_Temperature+3)
	movf	(2+(?___fldiv)),w
	movwf	(?_Read_Temperature+2)
	movf	(1+(?___fldiv)),w
	movwf	(?_Read_Temperature+1)
	movf	(0+(?___fldiv)),w
	movwf	(?_Read_Temperature)

	line	77
	
l102:	
	return
	callstack 0
GLOBAL	__end_of_Read_Temperature
	__end_of_Read_Temperature:
	signat	_Read_Temperature,92
	global	___xxtofl

;; *************** function ___xxtofl *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\xxtofl.c"
;; Parameters:    Size  Location     Type
;;  sign            1    wreg     unsigned char 
;;  val             4    0[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1    8[BANK0 ] unsigned char 
;;  arg             4   10[BANK0 ] unsigned long 
;;  exp             1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Read_Temperature
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\xxtofl.c"
	line	10
global __ptext27
__ptext27:	;psect for function ___xxtofl
psect	text27
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\xxtofl.c"
	line	10
	
___xxtofl:	
;incstack = 0
	callstack 3
; Regs used in ___xxtofl: [wreg+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___xxtofl@sign)
	line	15
	
l3204:	
	movf	((___xxtofl@sign)),w
	btfsc	status,2
	goto	u4731
	goto	u4730
u4731:
	goto	l3210
u4730:
	
l3206:	
	btfss	(___xxtofl@val+3),7
	goto	u4741
	goto	u4740
u4741:
	goto	l3210
u4740:
	line	16
	
l3208:	
	comf	(___xxtofl@val)+0,w
	movwf	(___xxtofl@arg)
	comf	(___xxtofl@val)+1,w
	movwf	(___xxtofl@arg+1)
	comf	(___xxtofl@val)+2,w
	movwf	(___xxtofl@arg+2)
	comf	(___xxtofl@val)+3,w
	movwf	(___xxtofl@arg+3)
	incf	(___xxtofl@arg),f
	skipnz
	incf	(___xxtofl@arg+1),f
	skipnz
	incf	(___xxtofl@arg+2),f
	skipnz
	incf	(___xxtofl@arg+3),f
	line	17
	goto	l698
	line	19
	
l3210:	
	movf	(___xxtofl@val+3),w
	movwf	(___xxtofl@arg+3)
	movf	(___xxtofl@val+2),w
	movwf	(___xxtofl@arg+2)
	movf	(___xxtofl@val+1),w
	movwf	(___xxtofl@arg+1)
	movf	(___xxtofl@val),w
	movwf	(___xxtofl@arg)

	line	20
	
l698:	
	line	21
	movf	(___xxtofl@val+3),w
	iorwf	(___xxtofl@val+2),w
	iorwf	(___xxtofl@val+1),w
	iorwf	(___xxtofl@val),w
	skipz
	goto	u4751
	goto	u4750
u4751:
	goto	l699
u4750:
	line	22
	
l3212:	
	movlw	0x0
	movwf	(?___xxtofl+3)
	movlw	0x0
	movwf	(?___xxtofl+2)
	movlw	0x0
	movwf	(?___xxtofl+1)
	movlw	0x0
	movwf	(?___xxtofl)

	goto	l700
	
l699:	
	line	23
	movlw	096h
	movwf	(___xxtofl@exp)
	line	24
	goto	l3218
	line	25
	
l3216:	
	movlw	low(01h)
	addwf	(___xxtofl@exp),f
	line	26
	movlw	01h
u4765:
	clrc
	rrf	(___xxtofl@arg+3),f
	rrf	(___xxtofl@arg+2),f
	rrf	(___xxtofl@arg+1),f
	rrf	(___xxtofl@arg),f
	addlw	-1
	skipz
	goto	u4765

	line	24
	
l3218:	
	movlw	high highword(0FE000000h)
	andwf	(___xxtofl@arg+3),w
	btfss	status,2
	goto	u4771
	goto	u4770
u4771:
	goto	l3216
u4770:
	goto	l704
	line	29
	
l3220:	
	movlw	low(01h)
	addwf	(___xxtofl@exp),f
	line	30
	
l3222:	
	movlw	01h
	addwf	(___xxtofl@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___xxtofl@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___xxtofl@arg+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___xxtofl@arg+3),f
	line	31
	
l3224:	
	movlw	01h
u4785:
	clrc
	rrf	(___xxtofl@arg+3),f
	rrf	(___xxtofl@arg+2),f
	rrf	(___xxtofl@arg+1),f
	rrf	(___xxtofl@arg),f
	addlw	-1
	skipz
	goto	u4785

	line	32
	
l704:	
	line	28
	movlw	high highword(0FF000000h)
	andwf	(___xxtofl@arg+3),w
	btfss	status,2
	goto	u4791
	goto	u4790
u4791:
	goto	l3220
u4790:
	goto	l3228
	line	34
	
l3226:	
	movlw	01h
	subwf	(___xxtofl@exp),f
	line	35
	movlw	01h
	movwf	(??___xxtofl+0)+0
u4805:
	clrc
	rlf	(___xxtofl@arg),f
	rlf	(___xxtofl@arg+1),f
	rlf	(___xxtofl@arg+2),f
	rlf	(___xxtofl@arg+3),f
	decfsz	(??___xxtofl+0)+0
	goto	u4805
	line	33
	
l3228:	
	btfsc	(___xxtofl@arg+2),(23)&7
	goto	u4811
	goto	u4810
u4811:
	goto	l711
u4810:
	
l3230:	
	movlw	low(02h)
	subwf	(___xxtofl@exp),w
	skipnc
	goto	u4821
	goto	u4820
u4821:
	goto	l3226
u4820:
	
l711:	
	line	37
	btfsc	(___xxtofl@exp),(0)&7
	goto	u4831
	goto	u4830
u4831:
	goto	l712
u4830:
	line	38
	
l3232:	
	movlw	0FFh
	andwf	(___xxtofl@arg),f
	movlw	0FFh
	andwf	(___xxtofl@arg+1),f
	movlw	07Fh
	andwf	(___xxtofl@arg+2),f
	movlw	0FFh
	andwf	(___xxtofl@arg+3),f
	
l712:	
	line	39
	clrc
	rrf	(___xxtofl@exp),f

	line	40
	
l3234:	
	movf	(___xxtofl@exp),w
	movwf	(??___xxtofl+0)+0
	clrf	(??___xxtofl+0)+0+1
	clrf	(??___xxtofl+0)+0+2
	clrf	(??___xxtofl+0)+0+3
	movlw	018h
u4845:
	clrc
	rlf	(??___xxtofl+0)+0,f
	rlf	(??___xxtofl+0)+1,f
	rlf	(??___xxtofl+0)+2,f
	rlf	(??___xxtofl+0)+3,f
u4840:
	addlw	-1
	skipz
	goto	u4845
	movf	0+(??___xxtofl+0)+0,w
	iorwf	(___xxtofl@arg),f
	movf	1+(??___xxtofl+0)+0,w
	iorwf	(___xxtofl@arg+1),f
	movf	2+(??___xxtofl+0)+0,w
	iorwf	(___xxtofl@arg+2),f
	movf	3+(??___xxtofl+0)+0,w
	iorwf	(___xxtofl@arg+3),f
	line	41
	
l3236:	
	movf	((___xxtofl@sign)),w
	btfsc	status,2
	goto	u4851
	goto	u4850
u4851:
	goto	l3242
u4850:
	
l3238:	
	btfss	(___xxtofl@val+3),7
	goto	u4861
	goto	u4860
u4861:
	goto	l3242
u4860:
	line	42
	
l3240:	
	bsf	(___xxtofl@arg)+(31/8),(31)&7
	line	43
	
l3242:	
	movf	(___xxtofl@arg+3),w
	movwf	(?___xxtofl+3)
	movf	(___xxtofl@arg+2),w
	movwf	(?___xxtofl+2)
	movf	(___xxtofl@arg+1),w
	movwf	(?___xxtofl+1)
	movf	(___xxtofl@arg),w
	movwf	(?___xxtofl)

	line	44
	
l700:	
	return
	callstack 0
GLOBAL	__end_of___xxtofl
	__end_of___xxtofl:
	signat	___xxtofl,8316
	global	___flmul

;; *************** function ___flmul *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcmul.c"
;; Parameters:    Size  Location     Type
;;  b               4   14[BANK0 ] unsigned char 
;;  a               4   18[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  prod            4   34[BANK0 ] struct .
;;  grs             4   28[BANK0 ] unsigned long 
;;  temp            2   38[BANK0 ] struct .
;;  bexp            1   33[BANK0 ] unsigned char 
;;  aexp            1   32[BANK0 ] unsigned char 
;;  sign            1   27[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   14[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0      13       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      26       0       0       0
;;Total ram usage:       26 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		__Umul8_16
;; This function is called by:
;;		_Read_Temperature
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcmul.c"
	line	8
global __ptext28
__ptext28:	;psect for function ___flmul
psect	text28
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcmul.c"
	line	8
	
___flmul:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in ___flmul: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	17
	
l2660:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(___flmul@b)+03h,w
	movwf	(___flmul@sign)
	
l2662:	
	movlw	low(080h)
	andwf	(___flmul@sign),f
	line	18
	
l2664:	
	movf	0+(___flmul@b)+03h,w
	movwf	(??___flmul+0)+0
	addwf	(??___flmul+0)+0,w
	movwf	(___flmul@bexp)
	line	19
	
l2666:	
	btfss	0+(___flmul@b)+02h,(7)&7
	goto	u3681
	goto	u3680
u3681:
	goto	l2670
u3680:
	line	20
	
l2668:	
	bsf	(___flmul@bexp)+(0/8),(0)&7
	line	24
	
l2670:	
	movf	((___flmul@bexp)),w
	btfsc	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l2678
u3690:
	line	26
	
l2672:	
		incf	((___flmul@bexp)),w
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l2676
u3700:
	line	28
	
l2674:	
	movlw	0x0
	movwf	(___flmul@b+3)
	movlw	0x0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	line	31
	
l2676:	
	bsf	(___flmul@b)+(23/8),(23)&7
	line	33
	goto	l2680
	line	36
	
l2678:	
	movlw	0x0
	movwf	(___flmul@b+3)
	movlw	0x0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	line	39
	
l2680:	
	movf	0+(___flmul@a)+03h,w
	andlw	080h
	xorwf	(___flmul@sign),f
	line	40
	
l2682:	
	movf	0+(___flmul@a)+03h,w
	movwf	(??___flmul+0)+0
	addwf	(??___flmul+0)+0,w
	movwf	(___flmul@aexp)
	line	41
	
l2684:	
	btfss	0+(___flmul@a)+02h,(7)&7
	goto	u3711
	goto	u3710
u3711:
	goto	l2688
u3710:
	line	42
	
l2686:	
	bsf	(___flmul@aexp)+(0/8),(0)&7
	line	45
	
l2688:	
	movf	((___flmul@aexp)),w
	btfsc	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l2696
u3720:
	line	48
	
l2690:	
		incf	((___flmul@aexp)),w
	btfss	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l2694
u3730:
	line	50
	
l2692:	
	movlw	0x0
	movwf	(___flmul@a+3)
	movlw	0x0
	movwf	(___flmul@a+2)
	movlw	0x0
	movwf	(___flmul@a+1)
	movlw	0x0
	movwf	(___flmul@a)

	line	53
	
l2694:	
	bsf	(___flmul@a)+(23/8),(23)&7
	line	54
	goto	l2698
	line	57
	
l2696:	
	movlw	0x0
	movwf	(___flmul@a+3)
	movlw	0x0
	movwf	(___flmul@a+2)
	movlw	0x0
	movwf	(___flmul@a+1)
	movlw	0x0
	movwf	(___flmul@a)

	line	65
	
l2698:	
	movf	((___flmul@aexp)),w
	btfsc	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l2702
u3740:
	
l2700:	
	movf	((___flmul@bexp)),w
	btfss	status,2
	goto	u3751
	goto	u3750
u3751:
	goto	l2706
u3750:
	line	66
	
l2702:	
	movlw	0x0
	movwf	(?___flmul+3)
	movlw	0x0
	movwf	(?___flmul+2)
	movlw	0x0
	movwf	(?___flmul+1)
	movlw	0x0
	movwf	(?___flmul)

	goto	l654
	line	119
	
l2706:	
	movf	(___flmul@b),w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+02h,w
	fcall	__Umul8_16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?__Umul8_16)),w
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	120
	
l2708:	
	movf	(___flmul@temp),w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	clrf	(??___flmul+0)+0+2
	clrf	(??___flmul+0)+0+3
	movf	3+(??___flmul+0)+0,w
	movwf	(___flmul@grs+3)
	movf	2+(??___flmul+0)+0,w
	movwf	(___flmul@grs+2)
	movf	1+(??___flmul+0)+0,w
	movwf	(___flmul@grs+1)
	movf	0+(??___flmul+0)+0,w
	movwf	(___flmul@grs)

	line	121
	
l2710:	
	movf	0+(___flmul@temp)+01h,w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	clrf	(??___flmul+0)+0+2
	clrf	(??___flmul+0)+0+3
	movf	3+(??___flmul+0)+0,w
	movwf	(___flmul@prod+3)
	movf	2+(??___flmul+0)+0,w
	movwf	(___flmul@prod+2)
	movf	1+(??___flmul+0)+0,w
	movwf	(___flmul@prod+1)
	movf	0+(??___flmul+0)+0,w
	movwf	(___flmul@prod)

	line	122
	movf	0+(___flmul@b)+01h,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+01h,w
	fcall	__Umul8_16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?__Umul8_16)),w
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	123
	
l2712:	
	movf	(___flmul@temp),w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	clrf	(??___flmul+0)+0+2
	clrf	(??___flmul+0)+0+3
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@grs),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3761
	addwf	(___flmul@grs+1),f
u3761:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3762
	addwf	(___flmul@grs+2),f
u3762:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3763
	addwf	(___flmul@grs+3),f
u3763:

	line	124
	
l2714:	
	movf	0+(___flmul@temp)+01h,w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	clrf	(??___flmul+0)+0+2
	clrf	(??___flmul+0)+0+3
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@prod),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3771
	addwf	(___flmul@prod+1),f
u3771:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3772
	addwf	(___flmul@prod+2),f
u3772:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3773
	addwf	(___flmul@prod+3),f
u3773:

	line	125
	movf	0+(___flmul@b)+02h,w
	movwf	(__Umul8_16@multiplicand)
	movf	(___flmul@a),w
	fcall	__Umul8_16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?__Umul8_16)),w
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	126
	
l2716:	
	movf	(___flmul@temp),w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	clrf	(??___flmul+0)+0+2
	clrf	(??___flmul+0)+0+3
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@grs),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3781
	addwf	(___flmul@grs+1),f
u3781:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3782
	addwf	(___flmul@grs+2),f
u3782:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3783
	addwf	(___flmul@grs+3),f
u3783:

	line	127
	
l2718:	
	movf	0+(___flmul@temp)+01h,w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	clrf	(??___flmul+0)+0+2
	clrf	(??___flmul+0)+0+3
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@prod),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3791
	addwf	(___flmul@prod+1),f
u3791:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3792
	addwf	(___flmul@prod+2),f
u3792:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3793
	addwf	(___flmul@prod+3),f
u3793:

	line	128
	
l2720:	
	movlw	08h
	movwf	(??___flmul+0)+0
u3805:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul+0)+0
	goto	u3805
	line	129
	
l2722:	
	movf	0+(___flmul@b)+01h,w
	movwf	(__Umul8_16@multiplicand)
	movf	(___flmul@a),w
	fcall	__Umul8_16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?__Umul8_16)),w
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	130
	
l2724:	
	movf	(___flmul@temp),w
	movwf	((??___flmul+0)+0)
	movf	(___flmul@temp+1),w
	movwf	((??___flmul+0)+0+1)
	clrf	((??___flmul+0)+0+2)
	clrf	((??___flmul+0)+0+3)
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@grs),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3811
	addwf	(___flmul@grs+1),f
u3811:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3812
	addwf	(___flmul@grs+2),f
u3812:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3813
	addwf	(___flmul@grs+3),f
u3813:

	line	131
	
l2726:	
	movf	(___flmul@b),w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+01h,w
	fcall	__Umul8_16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?__Umul8_16)),w
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	132
	
l2728:	
	movf	(___flmul@temp),w
	movwf	((??___flmul+0)+0)
	movf	(___flmul@temp+1),w
	movwf	((??___flmul+0)+0+1)
	clrf	((??___flmul+0)+0+2)
	clrf	((??___flmul+0)+0+3)
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@grs),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3821
	addwf	(___flmul@grs+1),f
u3821:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3822
	addwf	(___flmul@grs+2),f
u3822:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3823
	addwf	(___flmul@grs+3),f
u3823:

	line	133
	
l2730:	
	movlw	08h
	movwf	(??___flmul+0)+0
u3835:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul+0)+0
	goto	u3835
	line	134
	movf	(___flmul@b),w
	movwf	(__Umul8_16@multiplicand)
	movf	(___flmul@a),w
	fcall	__Umul8_16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?__Umul8_16)),w
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	135
	
l2732:	
	movf	(___flmul@temp),w
	movwf	((??___flmul+0)+0)
	movf	(___flmul@temp+1),w
	movwf	((??___flmul+0)+0+1)
	clrf	((??___flmul+0)+0+2)
	clrf	((??___flmul+0)+0+3)
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@grs),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3841
	addwf	(___flmul@grs+1),f
u3841:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3842
	addwf	(___flmul@grs+2),f
u3842:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3843
	addwf	(___flmul@grs+3),f
u3843:

	line	136
	
l2734:	
	movf	0+(___flmul@b)+01h,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+02h,w
	fcall	__Umul8_16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?__Umul8_16)),w
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	137
	movf	(___flmul@temp),w
	movwf	((??___flmul+0)+0)
	movf	(___flmul@temp+1),w
	movwf	((??___flmul+0)+0+1)
	clrf	((??___flmul+0)+0+2)
	clrf	((??___flmul+0)+0+3)
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@prod),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3851
	addwf	(___flmul@prod+1),f
u3851:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3852
	addwf	(___flmul@prod+2),f
u3852:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3853
	addwf	(___flmul@prod+3),f
u3853:

	line	138
	
l2736:	
	movf	0+(___flmul@b)+02h,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+01h,w
	fcall	__Umul8_16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?__Umul8_16)),w
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	139
	
l2738:	
	movf	(___flmul@temp),w
	movwf	((??___flmul+0)+0)
	movf	(___flmul@temp+1),w
	movwf	((??___flmul+0)+0+1)
	clrf	((??___flmul+0)+0+2)
	clrf	((??___flmul+0)+0+3)
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@prod),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3861
	addwf	(___flmul@prod+1),f
u3861:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3862
	addwf	(___flmul@prod+2),f
u3862:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3863
	addwf	(___flmul@prod+3),f
u3863:

	line	140
	movf	0+(___flmul@b)+02h,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+02h,w
	fcall	__Umul8_16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?__Umul8_16)),w
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	141
	
l2740:	
	movf	(___flmul@temp),w
	movwf	((??___flmul+0)+0)
	movf	(___flmul@temp+1),w
	movwf	((??___flmul+0)+0+1)
	clrf	((??___flmul+0)+0+2)
	clrf	((??___flmul+0)+0+3)
	movlw	08h
u3875:
	clrc
	rlf	(??___flmul+0)+0,f
	rlf	(??___flmul+0)+1,f
	rlf	(??___flmul+0)+2,f
	rlf	(??___flmul+0)+3,f
u3870:
	addlw	-1
	skipz
	goto	u3875
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@prod),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3881
	addwf	(___flmul@prod+1),f
u3881:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3882
	addwf	(___flmul@prod+2),f
u3882:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3883
	addwf	(___flmul@prod+3),f
u3883:

	line	145
	
l2742:	
	movf	(___flmul@grs),w
	movwf	(??___flmul+0)+0
	movf	(___flmul@grs+1),w
	movwf	((??___flmul+0)+0+1)
	movf	(___flmul@grs+2),w
	movwf	((??___flmul+0)+0+2)
	movf	(___flmul@grs+3),w
	movwf	((??___flmul+0)+0+3)
	movlw	018h
u3895:
	clrc
	rrf	(??___flmul+0)+3,f
	rrf	(??___flmul+0)+2,f
	rrf	(??___flmul+0)+1,f
	rrf	(??___flmul+0)+0,f
u3890:
	addlw	-1
	skipz
	goto	u3895
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@prod),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3901
	addwf	(___flmul@prod+1),f
u3901:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3902
	addwf	(___flmul@prod+2),f
u3902:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3903
	addwf	(___flmul@prod+3),f
u3903:

	line	146
	
l2744:	
	movlw	08h
	movwf	(??___flmul+0)+0
u3915:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul+0)+0
	goto	u3915
	line	149
	
l2746:	
	movf	(___flmul@bexp),w
	addwf	(___flmul@aexp),w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	rlf	1+(??___flmul+0)+0,f
	
	movf	0+(??___flmul+0)+0,w
	addlw	low(-126)
	movwf	(___flmul@temp)
	movf	1+(??___flmul+0)+0,w
	skipnc
	addlw	1
	addlw	high(-126)
	movwf	1+(___flmul@temp)
	line	152
	goto	l2758
	line	153
	
l2748:	
	movlw	01h
	movwf	(??___flmul+0)+0
u3925:
	clrc
	rlf	(___flmul@prod),f
	rlf	(___flmul@prod+1),f
	rlf	(___flmul@prod+2),f
	rlf	(___flmul@prod+3),f
	decfsz	(??___flmul+0)+0
	goto	u3925
	line	154
	
l2750:	
	btfss	(___flmul@grs+3),(31)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l2754
u3930:
	line	155
	
l2752:	
	bsf	(___flmul@prod)+(0/8),(0)&7
	line	157
	
l2754:	
	movlw	01h
	movwf	(??___flmul+0)+0
u3945:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul+0)+0
	goto	u3945
	line	158
	
l2756:	
	movlw	0FFh
	addwf	(___flmul@temp),f
	skipnc
	incf	(___flmul@temp+1),f
	movlw	0FFh
	addwf	(___flmul@temp+1),f
	line	152
	
l2758:	
	btfss	(___flmul@prod+2),(23)&7
	goto	u3951
	goto	u3950
u3951:
	goto	l2748
u3950:
	line	163
	
l2760:	
	clrf	(___flmul@aexp)
	line	164
	
l2762:	
	btfss	(___flmul@grs+3),(31)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l2770
u3960:
	line	165
	
l2764:	
	movlw	0FFh
	andwf	(___flmul@grs),w
	movwf	(??___flmul+0)+0
	movlw	0FFh
	andwf	(___flmul@grs+1),w
	movwf	((??___flmul+0)+0+1)
	movlw	0FFh
	andwf	(___flmul@grs+2),w
	movwf	((??___flmul+0)+0+2)
	movlw	07Fh
	andwf	(___flmul@grs+3),w
	movwf	((??___flmul+0)+0+3)
	movf	3+(??___flmul+0)+0,w
	iorwf	2+(??___flmul+0)+0,w
	iorwf	1+(??___flmul+0)+0,w
	iorwf	0+(??___flmul+0)+0,w
	skipnz
	goto	u3971
	goto	u3970
u3971:
	goto	l660
u3970:
	line	166
	
l2766:	
	movlw	01h
	movwf	(___flmul@aexp)
	line	167
	goto	l2770
	line	168
	
l660:	
	line	169
	btfss	(___flmul@prod),(0)&7
	goto	u3981
	goto	u3980
u3981:
	goto	l2770
u3980:
	goto	l2766
	line	174
	
l2770:	
	movf	((___flmul@aexp)),w
	btfsc	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l2780
u3990:
	line	175
	
l2772:	
	movlw	01h
	addwf	(___flmul@prod),f
	movlw	0
	skipnc
movlw 1
	addwf	(___flmul@prod+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___flmul@prod+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___flmul@prod+3),f
	line	176
	
l2774:	
	btfss	(___flmul@prod+3),(24)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l2780
u4000:
	line	177
	
l2776:	
	movf	(___flmul@prod),w
	movwf	(??___flmul+0)+0
	movf	(___flmul@prod+1),w
	movwf	((??___flmul+0)+0+1)
	movf	(___flmul@prod+2),w
	movwf	((??___flmul+0)+0+2)
	movf	(___flmul@prod+3),w
	movwf	((??___flmul+0)+0+3)
	movlw	01h
	movwf	(??___flmul+4)+0
u4015:
	rlf	(??___flmul+0)+3,w
	rrf	(??___flmul+0)+3,f
	rrf	(??___flmul+0)+2,f
	rrf	(??___flmul+0)+1,f
	rrf	(??___flmul+0)+0,f
u4010:
	decfsz	(??___flmul+4)+0,f
	goto	u4015
	movf	3+(??___flmul+0)+0,w
	movwf	(___flmul@prod+3)
	movf	2+(??___flmul+0)+0,w
	movwf	(___flmul@prod+2)
	movf	1+(??___flmul+0)+0,w
	movwf	(___flmul@prod+1)
	movf	0+(??___flmul+0)+0,w
	movwf	(___flmul@prod)

	line	178
	
l2778:	
	movlw	01h
	addwf	(___flmul@temp),f
	skipnc
	incf	(___flmul@temp+1),f
	movlw	0
	addwf	(___flmul@temp+1),f
	line	183
	
l2780:	
	movf	(___flmul@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u4025
	movlw	0FFh
	subwf	(___flmul@temp),w
u4025:

	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l2784
u4020:
	line	184
	
l2782:	
	movlw	07Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@prod+3)
	movlw	080h
	movwf	(___flmul@prod+2)
	movlw	0
	movwf	(___flmul@prod+1)
	movlw	0
	movwf	(___flmul@prod)

	line	185
	goto	l666
	line	187
	
l2784:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flmul@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u4035
	movlw	01h
	subwf	(___flmul@temp),w
u4035:

	skipnc
	goto	u4031
	goto	u4030
u4031:
	goto	l2790
u4030:
	line	188
	
l2786:	
	movlw	high highword(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@prod+3)
	movlw	low highword(0)
	movwf	(___flmul@prod+2)
	movlw	high(0)
	movwf	(___flmul@prod+1)
	movlw	low(0)
	movwf	(___flmul@prod)

	line	190
	
l2788:	
	clrf	(___flmul@sign)
	line	191
	goto	l666
	line	194
	
l2790:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flmul@temp),w
	movwf	(___flmul@bexp)
	line	195
	movlw	0FFh
	andwf	(___flmul@prod),f
	movlw	0FFh
	andwf	(___flmul@prod+1),f
	movlw	07Fh
	andwf	(___flmul@prod+2),f
	movlw	0
	andwf	(___flmul@prod+3),f
	line	196
	
l2792:	
	btfss	(___flmul@bexp),(0)&7
	goto	u4041
	goto	u4040
u4041:
	goto	l2796
u4040:
	line	197
	
l2794:	
	bsf	0+(___flmul@prod)+02h+(7/8),(7)&7
	line	199
	
l2796:	
	movf	(___flmul@bexp),w
	movwf	(??___flmul+0)+0
	clrc
	rrf	(??___flmul+0)+0,w
	movwf	0+(___flmul@prod)+03h
	line	200
	
l666:	
	line	201
	movf	(___flmul@sign),w
	iorwf	0+(___flmul@prod)+03h,f
	line	203
	
l2798:	
	movf	(___flmul@prod+3),w
	movwf	(?___flmul+3)
	movf	(___flmul@prod+2),w
	movwf	(?___flmul+2)
	movf	(___flmul@prod+1),w
	movwf	(?___flmul+1)
	movf	(___flmul@prod),w
	movwf	(?___flmul)

	line	205
	
l654:	
	return
	callstack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
	signat	___flmul,8316
	global	__Umul8_16

;; *************** function __Umul8_16 *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\Umul8_16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    8[BANK0 ] unsigned char 
;;  word_mpld       2    6[BANK0 ] unsigned short 
;;  product         2    4[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___flmul
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\Umul8_16.c"
	line	4
global __ptext29
__ptext29:	;psect for function __Umul8_16
psect	text29
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\Umul8_16.c"
	line	4
	
__Umul8_16:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in __Umul8_16: [wreg+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__Umul8_16@multiplier)
	line	5
	
l2398:	
	clrf	(__Umul8_16@product)
	clrf	(__Umul8_16@product+1)
	line	6
	
l2400:	
	movf	(__Umul8_16@multiplicand),w
	movwf	(??__Umul8_16+0)+0
	clrf	(??__Umul8_16+0)+0+1
	movf	0+(??__Umul8_16+0)+0,w
	movwf	(__Umul8_16@word_mpld)
	movf	1+(??__Umul8_16+0)+0,w
	movwf	(__Umul8_16@word_mpld+1)
	line	51
	
l2402:	
	btfss	(__Umul8_16@multiplier),(0)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l673
u3100:
	line	52
	
l2404:	
	movf	(__Umul8_16@word_mpld),w
	addwf	(__Umul8_16@product),f
	skipnc
	incf	(__Umul8_16@product+1),f
	movf	(__Umul8_16@word_mpld+1),w
	addwf	(__Umul8_16@product+1),f
	line	53
	
l673:	
	line	54
	movlw	01h
	
u3115:
	clrc
	rlf	(__Umul8_16@word_mpld),f
	rlf	(__Umul8_16@word_mpld+1),f
	addlw	-1
	skipz
	goto	u3115
	line	55
	clrc
	rrf	(__Umul8_16@multiplier),f

	line	56
	
l2406:	
	movf	((__Umul8_16@multiplier)),w
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l2402
u3120:
	line	59
	
l2408:	
	movf	(__Umul8_16@product+1),w
	movwf	(?__Umul8_16+1)
	movf	(__Umul8_16@product),w
	movwf	(?__Umul8_16)
	line	60
	
l675:	
	return
	callstack 0
GLOBAL	__end_of__Umul8_16
	__end_of__Umul8_16:
	signat	__Umul8_16,8314
	global	___fldiv

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcdiv.c"
;; Parameters:    Size  Location     Type
;;  a               4   40[BANK0 ] unsigned int 
;;  b               4   44[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  grs             4   60[BANK0 ] unsigned long 
;;  rem             4   53[BANK0 ] unsigned long 
;;  new_exp         2   58[BANK0 ] short 
;;  aexp            1   65[BANK0 ] unsigned char 
;;  bexp            1   64[BANK0 ] unsigned char 
;;  sign            1   57[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   40[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0      13       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      26       0       0       0
;;Total ram usage:       26 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Read_Temperature
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcdiv.c"
	line	8
global __ptext30
__ptext30:	;psect for function ___fldiv
psect	text30
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\sprcdiv.c"
	line	8
	
___fldiv:	
;incstack = 0
	callstack 0
; Regs used in ___fldiv: [wreg+status,2+status,0+btemp+1]
	line	26
	
l2516:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(___fldiv@b)+03h,w
	movwf	(___fldiv@sign)
	
l2518:	
	movlw	low(080h)
	andwf	(___fldiv@sign),f
	line	27
	
l2520:	
	movf	0+(___fldiv@b)+03h,w
	movwf	(??___fldiv+0)+0
	addwf	(??___fldiv+0)+0,w
	movwf	(___fldiv@bexp)
	line	28
	
l2522:	
	btfss	0+(___fldiv@b)+02h,(7)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l2526
u3390:
	line	29
	
l2524:	
	bsf	(___fldiv@bexp)+(0/8),(0)&7
	line	33
	
l2526:	
	movf	((___fldiv@bexp)),w
	btfsc	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l2536
u3400:
	line	35
	
l2528:	
		incf	((___fldiv@bexp)),w
	btfss	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l2532
u3410:
	line	37
	
l2530:	
	movlw	0x0
	movwf	(___fldiv@b+3)
	movlw	0x0
	movwf	(___fldiv@b+2)
	movlw	0x0
	movwf	(___fldiv@b+1)
	movlw	0x0
	movwf	(___fldiv@b)

	line	40
	
l2532:	
	bsf	(___fldiv@b)+(23/8),(23)&7
	line	42
	
l2534:	
	clrf	0+(___fldiv@b)+03h
	line	43
	goto	l2538
	line	46
	
l2536:	
	movlw	0x0
	movwf	(___fldiv@b+3)
	movlw	0x0
	movwf	(___fldiv@b+2)
	movlw	0x0
	movwf	(___fldiv@b+1)
	movlw	0x0
	movwf	(___fldiv@b)

	line	49
	
l2538:	
	movf	0+(___fldiv@a)+03h,w
	andlw	080h
	xorwf	(___fldiv@sign),f
	line	50
	
l2540:	
	movf	0+(___fldiv@a)+03h,w
	movwf	(??___fldiv+0)+0
	addwf	(??___fldiv+0)+0,w
	movwf	(___fldiv@aexp)
	line	51
	
l2542:	
	btfss	0+(___fldiv@a)+02h,(7)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l2546
u3420:
	line	52
	
l2544:	
	bsf	(___fldiv@aexp)+(0/8),(0)&7
	line	56
	
l2546:	
	movf	((___fldiv@aexp)),w
	btfsc	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l2556
u3430:
	line	58
	
l2548:	
		incf	((___fldiv@aexp)),w
	btfss	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l2552
u3440:
	line	60
	
l2550:	
	movlw	0x0
	movwf	(___fldiv@a+3)
	movlw	0x0
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	line	63
	
l2552:	
	bsf	(___fldiv@a)+(23/8),(23)&7
	line	65
	
l2554:	
	clrf	0+(___fldiv@a)+03h
	line	66
	goto	l614
	line	69
	
l2556:	
	movlw	0x0
	movwf	(___fldiv@a+3)
	movlw	0x0
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	line	70
	
l614:	
	line	75
	movf	(___fldiv@a+3),w
	iorwf	(___fldiv@a+2),w
	iorwf	(___fldiv@a+1),w
	iorwf	(___fldiv@a),w
	skipz
	goto	u3451
	goto	u3450
u3451:
	goto	l2566
u3450:
	line	76
	
l2558:	
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	77
	movlw	080h
	iorwf	0+(___fldiv@b)+02h,f
	movlw	07Fh
	iorwf	1+(___fldiv@b)+02h,f
	line	78
	
l2560:	
	movf	(___fldiv@sign),w
	iorwf	0+(___fldiv@b)+03h,f
	line	79
	
l2562:	
	movf	(___fldiv@b+3),w
	movwf	(?___fldiv+3)
	movf	(___fldiv@b+2),w
	movwf	(?___fldiv+2)
	movf	(___fldiv@b+1),w
	movwf	(?___fldiv+1)
	movf	(___fldiv@b),w
	movwf	(?___fldiv)

	goto	l616
	line	83
	
l2566:	
	movf	((___fldiv@bexp)),w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l2572
u3460:
	line	84
	
l2568:	
	line	85
	movlw	high highword(0)
	movwf	(?___fldiv+3)
	movlw	low highword(0)
	movwf	(?___fldiv+2)
	movlw	high(0)
	movwf	(?___fldiv+1)
	movlw	low(0)
	movwf	(?___fldiv)

	goto	l616
	line	89
	
l2572:	
	movf	(___fldiv@bexp),w
	movwf	(??___fldiv+0)+0
	clrf	(??___fldiv+0)+0+1
	movf	1+(??___fldiv+0)+0,w
	movwf	(??___fldiv+2)+0+1
	movf	(___fldiv@aexp),w
	subwf	0+(??___fldiv+0)+0,w
	movwf	(??___fldiv+2)+0
	skipc
	decf	(??___fldiv+2)+0+1,f
	movf	0+(??___fldiv+2)+0,w
	addlw	low(07Fh)
	movwf	(___fldiv@new_exp)
	movf	1+(??___fldiv+2)+0,w
	skipnc
	addlw	1
	addlw	high(07Fh)
	movwf	1+(___fldiv@new_exp)
	line	92
	
l2574:	
	movf	(___fldiv@b+3),w
	movwf	(___fldiv@rem+3)
	movf	(___fldiv@b+2),w
	movwf	(___fldiv@rem+2)
	movf	(___fldiv@b+1),w
	movwf	(___fldiv@rem+1)
	movf	(___fldiv@b),w
	movwf	(___fldiv@rem)

	line	93
	
l2576:	
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	94
	
l2578:	
	movlw	high highword(0)
	movwf	(___fldiv@grs+3)
	movlw	low highword(0)
	movwf	(___fldiv@grs+2)
	movlw	high(0)
	movwf	(___fldiv@grs+1)
	movlw	low(0)
	movwf	(___fldiv@grs)

	line	96
	
l2580:	
	clrf	(___fldiv@aexp)
	line	97
	goto	l2600
	line	100
	
l2582:	
	movf	((___fldiv@aexp)),w
	btfsc	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l2592
u3470:
	line	101
	
l2584:	
	movlw	01h
	movwf	(??___fldiv+0)+0
u3485:
	clrc
	rlf	(___fldiv@rem),f
	rlf	(___fldiv@rem+1),f
	rlf	(___fldiv@rem+2),f
	rlf	(___fldiv@rem+3),f
	decfsz	(??___fldiv+0)+0
	goto	u3485
	line	102
	movlw	01h
	movwf	(??___fldiv+0)+0
u3495:
	clrc
	rlf	(___fldiv@b),f
	rlf	(___fldiv@b+1),f
	rlf	(___fldiv@b+2),f
	rlf	(___fldiv@b+3),f
	decfsz	(??___fldiv+0)+0
	goto	u3495
	line	103
	
l2586:	
	btfss	(___fldiv@grs+3),(31)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l2590
u3500:
	line	104
	
l2588:	
	bsf	(___fldiv@b)+(0/8),(0)&7
	line	106
	
l2590:	
	movlw	01h
	movwf	(??___fldiv+0)+0
u3515:
	clrc
	rlf	(___fldiv@grs),f
	rlf	(___fldiv@grs+1),f
	rlf	(___fldiv@grs+2),f
	rlf	(___fldiv@grs+3),f
	decfsz	(??___fldiv+0)+0
	goto	u3515
	line	112
	
l2592:	
	movf	(___fldiv@a+3),w
	subwf	(___fldiv@rem+3),w
	skipz
	goto	u3525
	movf	(___fldiv@a+2),w
	subwf	(___fldiv@rem+2),w
	skipz
	goto	u3525
	movf	(___fldiv@a+1),w
	subwf	(___fldiv@rem+1),w
	skipz
	goto	u3525
	movf	(___fldiv@a),w
	subwf	(___fldiv@rem),w
u3525:
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l2598
u3520:
	line	115
	
l2594:	
	bsf	(___fldiv@grs)+(30/8),(30)&7
	line	116
	
l2596:	
	movf	(___fldiv@a),w
	subwf	(___fldiv@rem),f
	movf	(___fldiv@a+1),w
	skipc
	incfsz	(___fldiv@a+1),w
	subwf	(___fldiv@rem+1),f
	movf	(___fldiv@a+2),w
	skipc
	incfsz	(___fldiv@a+2),w
	subwf	(___fldiv@rem+2),f
	movf	(___fldiv@a+3),w
	skipc
	incfsz	(___fldiv@a+3),w
	subwf	(___fldiv@rem+3),f
	line	118
	
l2598:	
	movlw	low(01h)
	addwf	(___fldiv@aexp),f
	line	97
	
l2600:	
	movlw	low(01Ah)
	subwf	(___fldiv@aexp),w
	skipc
	goto	u3531
	goto	u3530
u3531:
	goto	l2582
u3530:
	line	122
	
l2602:	
	movf	(___fldiv@rem+3),w
	iorwf	(___fldiv@rem+2),w
	iorwf	(___fldiv@rem+1),w
	iorwf	(___fldiv@rem),w
	skipnz
	goto	u3541
	goto	u3540
u3541:
	goto	l2616
u3540:
	line	123
	
l2604:	
	bsf	(___fldiv@grs)+(0/8),(0)&7
	goto	l2616
	line	128
	
l2606:	
	movlw	01h
	movwf	(??___fldiv+0)+0
u3555:
	clrc
	rlf	(___fldiv@b),f
	rlf	(___fldiv@b+1),f
	rlf	(___fldiv@b+2),f
	rlf	(___fldiv@b+3),f
	decfsz	(??___fldiv+0)+0
	goto	u3555
	line	129
	
l2608:	
	btfss	(___fldiv@grs+3),(31)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l2612
u3560:
	line	130
	
l2610:	
	bsf	(___fldiv@b)+(0/8),(0)&7
	line	132
	
l2612:	
	movlw	01h
	movwf	(??___fldiv+0)+0
u3575:
	clrc
	rlf	(___fldiv@grs),f
	rlf	(___fldiv@grs+1),f
	rlf	(___fldiv@grs+2),f
	rlf	(___fldiv@grs+3),f
	decfsz	(??___fldiv+0)+0
	goto	u3575
	line	133
	
l2614:	
	movlw	0FFh
	addwf	(___fldiv@new_exp),f
	skipnc
	incf	(___fldiv@new_exp+1),f
	movlw	0FFh
	addwf	(___fldiv@new_exp+1),f
	line	127
	
l2616:	
	btfss	(___fldiv@b+2),(23)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l2606
u3580:
	line	139
	
l2618:	
	clrf	(___fldiv@aexp)
	line	140
	
l2620:	
	btfss	(___fldiv@grs+3),(31)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l2628
u3590:
	line	141
	
l2622:	
	movlw	0FFh
	andwf	(___fldiv@grs),w
	movwf	(??___fldiv+0)+0
	movlw	0FFh
	andwf	(___fldiv@grs+1),w
	movwf	((??___fldiv+0)+0+1)
	movlw	0FFh
	andwf	(___fldiv@grs+2),w
	movwf	((??___fldiv+0)+0+2)
	movlw	07Fh
	andwf	(___fldiv@grs+3),w
	movwf	((??___fldiv+0)+0+3)
	movf	3+(??___fldiv+0)+0,w
	iorwf	2+(??___fldiv+0)+0,w
	iorwf	1+(??___fldiv+0)+0,w
	iorwf	0+(??___fldiv+0)+0,w
	skipnz
	goto	u3601
	goto	u3600
u3601:
	goto	l630
u3600:
	line	142
	
l2624:	
	movlw	01h
	movwf	(___fldiv@aexp)
	line	143
	goto	l2628
	line	144
	
l630:	
	line	145
	btfss	(___fldiv@b),(0)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l2628
u3610:
	goto	l2624
	line	150
	
l2628:	
	movf	((___fldiv@aexp)),w
	btfsc	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l2638
u3620:
	line	151
	
l2630:	
	movlw	01h
	addwf	(___fldiv@b),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fldiv@b+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fldiv@b+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fldiv@b+3),f
	line	152
	
l2632:	
	btfss	(___fldiv@b+3),(24)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l2638
u3630:
	line	153
	
l2634:	
	movf	(___fldiv@b),w
	movwf	(??___fldiv+0)+0
	movf	(___fldiv@b+1),w
	movwf	((??___fldiv+0)+0+1)
	movf	(___fldiv@b+2),w
	movwf	((??___fldiv+0)+0+2)
	movf	(___fldiv@b+3),w
	movwf	((??___fldiv+0)+0+3)
	movlw	01h
	movwf	(??___fldiv+4)+0
u3645:
	rlf	(??___fldiv+0)+3,w
	rrf	(??___fldiv+0)+3,f
	rrf	(??___fldiv+0)+2,f
	rrf	(??___fldiv+0)+1,f
	rrf	(??___fldiv+0)+0,f
u3640:
	decfsz	(??___fldiv+4)+0,f
	goto	u3645
	movf	3+(??___fldiv+0)+0,w
	movwf	(___fldiv@b+3)
	movf	2+(??___fldiv+0)+0,w
	movwf	(___fldiv@b+2)
	movf	1+(??___fldiv+0)+0,w
	movwf	(___fldiv@b+1)
	movf	0+(??___fldiv+0)+0,w
	movwf	(___fldiv@b)

	line	154
	
l2636:	
	movlw	01h
	addwf	(___fldiv@new_exp),f
	skipnc
	incf	(___fldiv@new_exp+1),f
	movlw	0
	addwf	(___fldiv@new_exp+1),f
	line	159
	
l2638:	
	movf	(___fldiv@new_exp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3655
	movlw	0FFh
	subwf	(___fldiv@new_exp),w
u3655:

	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l2642
u3650:
	line	160
	
l2640:	
	movlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@new_exp)
	movlw	0
	movwf	((___fldiv@new_exp))+1
	line	161
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	165
	
l2642:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fldiv@new_exp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3665
	movlw	01h
	subwf	(___fldiv@new_exp),w
u3665:

	skipnc
	goto	u3661
	goto	u3660
u3661:
	goto	l636
u3660:
	line	166
	
l2644:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___fldiv@new_exp)
	clrf	(___fldiv@new_exp+1)
	line	167
	
l2646:	
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	169
	
l2648:	
	clrf	(___fldiv@sign)
	line	170
	
l636:	
	line	173
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fldiv@new_exp),w
	movwf	(___fldiv@bexp)
	line	175
	
l2650:	
	btfss	(___fldiv@bexp),(0)&7
	goto	u3671
	goto	u3670
u3671:
	goto	l2654
u3670:
	line	176
	
l2652:	
	bsf	0+(___fldiv@b)+02h+(7/8),(7)&7
	line	177
	goto	l638
	line	180
	
l2654:	
	movlw	low(07Fh)
	andwf	0+(___fldiv@b)+02h,f
	line	181
	
l638:	
	line	182
	movf	(___fldiv@bexp),w
	movwf	(??___fldiv+0)+0
	clrc
	rrf	(??___fldiv+0)+0,w
	movwf	0+(___fldiv@b)+03h
	line	183
	movf	(___fldiv@sign),w
	iorwf	0+(___fldiv@b)+03h,f
	goto	l2562
	line	185
	
l616:	
	return
	callstack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
	signat	___fldiv,8316
	global	_Move_Servo

;; *************** function _Move_Servo *****************
;; Defined at:
;;		line 101 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;  state           1    wreg     enum E1327
;; Auto vars:     Size  Location     Type
;;  state           1    4[BANK0 ] enum E1327
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_Servo_MoveTo0
;;		_Servo_MoveTo180
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	file	"./src/main.c"
	line	101
global __ptext31
__ptext31:	;psect for function _Move_Servo
psect	text31
	file	"./src/main.c"
	line	101
	
_Move_Servo:	
;incstack = 0
	callstack 3
; Regs used in _Move_Servo: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Move_Servo@state)
	line	102
	
l3862:	
		decf	((Move_Servo@state)),w
	btfss	status,2
	goto	u5761
	goto	u5760
u5761:
	goto	l3866
u5760:
	line	103
	
l3864:	
	fcall	_Servo_MoveTo180
	line	104
	goto	l117
	line	105
	
l3866:	
	fcall	_Servo_MoveTo0
	line	107
	
l117:	
	return
	callstack 0
GLOBAL	__end_of_Move_Servo
	__end_of_Move_Servo:
	signat	_Move_Servo,4217
	global	_Servo_MoveTo180

;; *************** function _Servo_MoveTo180 *****************
;; Defined at:
;;		line 91 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Move_Servo
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=0
	line	91
global __ptext32
__ptext32:	;psect for function _Servo_MoveTo180
psect	text32
	file	"./src/main.c"
	line	91
	
_Servo_MoveTo180:	
;incstack = 0
	callstack 3
; Regs used in _Servo_MoveTo180: [wreg+status,2+btemp+1]
	line	92
	
l3192:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Servo_MoveTo180@i)
	clrf	(Servo_MoveTo180@i+1)
	
l110:	
	line	93
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7	;volatile
	line	94
	
l3198:	
	asmopt push
asmopt off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Servo_MoveTo180+0)+0+1)
	movlw	251
movwf	((??_Servo_MoveTo180+0)+0)
	u6007:
decfsz	((??_Servo_MoveTo180+0)+0),f
	goto	u6007
	decfsz	((??_Servo_MoveTo180+0)+0+1),f
	goto	u6007
asmopt pop

	line	95
	
l3200:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	96
	asmopt push
asmopt off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Servo_MoveTo180+0)+0+1)
	movlw	221
movwf	((??_Servo_MoveTo180+0)+0)
	u6017:
decfsz	((??_Servo_MoveTo180+0)+0),f
	goto	u6017
	decfsz	((??_Servo_MoveTo180+0)+0+1),f
	goto	u6017
asmopt pop

	line	97
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(Servo_MoveTo180@i),f
	skipnc
	incf	(Servo_MoveTo180@i+1),f
	movlw	0
	addwf	(Servo_MoveTo180@i+1),f
	
l3202:	
	movf	(Servo_MoveTo180@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u4725
	movlw	014h
	subwf	(Servo_MoveTo180@i),w
u4725:

	skipc
	goto	u4721
	goto	u4720
u4721:
	goto	l110
u4720:
	line	98
	
l112:	
	return
	callstack 0
GLOBAL	__end_of_Servo_MoveTo180
	__end_of_Servo_MoveTo180:
	signat	_Servo_MoveTo180,89
	global	_Servo_MoveTo0

;; *************** function _Servo_MoveTo0 *****************
;; Defined at:
;;		line 81 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Move_Servo
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	line	81
global __ptext33
__ptext33:	;psect for function _Servo_MoveTo0
psect	text33
	file	"./src/main.c"
	line	81
	
_Servo_MoveTo0:	
;incstack = 0
	callstack 3
; Regs used in _Servo_MoveTo0: [wreg+status,2+btemp+1]
	line	82
	
l3180:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Servo_MoveTo0@i)
	clrf	(Servo_MoveTo0@i+1)
	
l105:	
	line	83
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7	;volatile
	line	84
	
l3186:	
	asmopt push
asmopt off
movlw	4
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Servo_MoveTo0+0)+0+1)
	movlw	61
movwf	((??_Servo_MoveTo0+0)+0)
	u6027:
decfsz	((??_Servo_MoveTo0+0)+0),f
	goto	u6027
	decfsz	((??_Servo_MoveTo0+0)+0+1),f
	goto	u6027
asmopt pop

	line	85
	
l3188:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	86
	asmopt push
asmopt off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Servo_MoveTo0+0)+0+1)
	movlw	221
movwf	((??_Servo_MoveTo0+0)+0)
	u6037:
decfsz	((??_Servo_MoveTo0+0)+0),f
	goto	u6037
	decfsz	((??_Servo_MoveTo0+0)+0+1),f
	goto	u6037
asmopt pop

	line	87
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(Servo_MoveTo0@i),f
	skipnc
	incf	(Servo_MoveTo0@i+1),f
	movlw	0
	addwf	(Servo_MoveTo0@i+1),f
	
l3190:	
	movf	(Servo_MoveTo0@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u4715
	movlw	014h
	subwf	(Servo_MoveTo0@i),w
u4715:

	skipc
	goto	u4711
	goto	u4710
u4711:
	goto	l105
u4710:
	line	88
	
l107:	
	return
	callstack 0
GLOBAL	__end_of_Servo_MoveTo0
	__end_of_Servo_MoveTo0:
	signat	_Servo_MoveTo0,89
	global	_Check_Temperature_Alarm

;; *************** function _Check_Temperature_Alarm *****************
;; Defined at:
;;		line 137 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___flge
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	line	137
global __ptext34
__ptext34:	;psect for function _Check_Temperature_Alarm
psect	text34
	file	"./src/main.c"
	line	137
	
_Check_Temperature_Alarm:	
;incstack = 0
	callstack 3
; Regs used in _Check_Temperature_Alarm: [wreg+status,2+status,0+pclath+cstack]
	line	138
	
l3880:	
	movlw	0x42
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	movlw	0x48
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_temperature+3)^0180h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_temperature+2)^0180h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_temperature+1)^0180h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_temperature)^0180h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u5781
	goto	u5780
u5781:
	goto	l3884
u5780:
	line	139
	
l3882:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fireAlarm)^0180h	;volatile
	line	140
	goto	l133
	line	141
	
l3884:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_fireAlarm)^0180h	;volatile
	line	143
	
l133:	
	return
	callstack 0
GLOBAL	__end_of_Check_Temperature_Alarm
	__end_of_Check_Temperature_Alarm:
	signat	_Check_Temperature_Alarm,89
	global	___flge

;; *************** function ___flge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\flge.c"
;; Parameters:    Size  Location     Type
;;  ff1             4   40[BANK0 ] void 
;;  ff2             4   44[BANK0 ] void 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Check_Temperature_Alarm
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\flge.c"
	line	4
global __ptext35
__ptext35:	;psect for function ___flge
psect	text35
	file	"C:\Program Files\Microchip\xc8\v3.00\pic\sources\c99\common\flge.c"
	line	4
	
___flge:	
;incstack = 0
	callstack 0
; Regs used in ___flge: [wreg+status,2+status,0]
	line	7
	
l2446:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(___flge@ff1),w
	movwf	(??___flge+0)+0
	movlw	0
	andwf	(___flge@ff1+1),w
	movwf	((??___flge+0)+0+1)
	movlw	080h
	andwf	(___flge@ff1+2),w
	movwf	((??___flge+0)+0+2)
	movlw	07Fh
	andwf	(___flge@ff1+3),w
	movwf	((??___flge+0)+0+3)
	movf	3+(??___flge+0)+0,w
	iorwf	2+(??___flge+0)+0,w
	iorwf	1+(??___flge+0)+0,w
	iorwf	0+(??___flge+0)+0,w
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l435
u3210:
	line	8
	
l2448:	
	movlw	high highword(0)
	movwf	(___flge@ff1+3)
	movlw	low highword(0)
	movwf	(___flge@ff1+2)
	movlw	high(0)
	movwf	(___flge@ff1+1)
	movlw	low(0)
	movwf	(___flge@ff1)

	
l435:	
	line	9
	movlw	0
	andwf	(___flge@ff2),w
	movwf	(??___flge+0)+0
	movlw	0
	andwf	(___flge@ff2+1),w
	movwf	((??___flge+0)+0+1)
	movlw	080h
	andwf	(___flge@ff2+2),w
	movwf	((??___flge+0)+0+2)
	movlw	07Fh
	andwf	(___flge@ff2+3),w
	movwf	((??___flge+0)+0+3)
	movf	3+(??___flge+0)+0,w
	iorwf	2+(??___flge+0)+0,w
	iorwf	1+(??___flge+0)+0,w
	iorwf	0+(??___flge+0)+0,w
	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l2452
u3220:
	line	10
	
l2450:	
	movlw	high highword(0)
	movwf	(___flge@ff2+3)
	movlw	low highword(0)
	movwf	(___flge@ff2+2)
	movlw	high(0)
	movwf	(___flge@ff2+1)
	movlw	low(0)
	movwf	(___flge@ff2)

	line	12
	
l2452:	
	btfss	(___flge@ff1+3),(31)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l2456
u3230:
	line	13
	
l2454:	
	movlw	0
	movwf	((??___flge+0)+0)
	movlw	0
	movwf	((??___flge+0)+0+1)
	movlw	0
	movwf	((??___flge+0)+0+2)
	movlw	080h
	movwf	((??___flge+0)+0+3)
	movf	(___flge@ff1),w
	subwf	(??___flge+0)+0,f
	movf	(___flge@ff1+1),w
	skipc
	incfsz	(___flge@ff1+1),w
	goto	u3241
	goto	u3242
u3241:
	subwf	(??___flge+0)+1,f
u3242:
	movf	(___flge@ff1+2),w
	skipc
	incfsz	(___flge@ff1+2),w
	goto	u3243
	goto	u3244
u3243:
	subwf	(??___flge+0)+2,f
u3244:
	movf	(___flge@ff1+3),w
	skipc
	incfsz	(___flge@ff1+3),w
	goto	u3245
	goto	u3246
u3245:
	subwf	(??___flge+0)+3,f
u3246:

	movf	3+(??___flge+0)+0,w
	movwf	(___flge@ff1+3)
	movf	2+(??___flge+0)+0,w
	movwf	(___flge@ff1+2)
	movf	1+(??___flge+0)+0,w
	movwf	(___flge@ff1+1)
	movf	0+(??___flge+0)+0,w
	movwf	(___flge@ff1)

	line	14
	
l2456:	
	btfss	(___flge@ff2+3),(31)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l438
u3250:
	line	15
	
l2458:	
	movlw	0
	movwf	((??___flge+0)+0)
	movlw	0
	movwf	((??___flge+0)+0+1)
	movlw	0
	movwf	((??___flge+0)+0+2)
	movlw	080h
	movwf	((??___flge+0)+0+3)
	movf	(___flge@ff2),w
	subwf	(??___flge+0)+0,f
	movf	(___flge@ff2+1),w
	skipc
	incfsz	(___flge@ff2+1),w
	goto	u3261
	goto	u3262
u3261:
	subwf	(??___flge+0)+1,f
u3262:
	movf	(___flge@ff2+2),w
	skipc
	incfsz	(___flge@ff2+2),w
	goto	u3263
	goto	u3264
u3263:
	subwf	(??___flge+0)+2,f
u3264:
	movf	(___flge@ff2+3),w
	skipc
	incfsz	(___flge@ff2+3),w
	goto	u3265
	goto	u3266
u3265:
	subwf	(??___flge+0)+3,f
u3266:

	movf	3+(??___flge+0)+0,w
	movwf	(___flge@ff2+3)
	movf	2+(??___flge+0)+0,w
	movwf	(___flge@ff2+2)
	movf	1+(??___flge+0)+0,w
	movwf	(___flge@ff2+1)
	movf	0+(??___flge+0)+0,w
	movwf	(___flge@ff2)

	
l438:	
	line	16
	movlw	080h
	xorwf	(___flge@ff1+3),f
	line	17
	movlw	080h
	xorwf	(___flge@ff2+3),f
	line	18
	movf	(___flge@ff2+3),w
	subwf	(___flge@ff1+3),w
	skipz
	goto	u3275
	movf	(___flge@ff2+2),w
	subwf	(___flge@ff1+2),w
	skipz
	goto	u3275
	movf	(___flge@ff2+1),w
	subwf	(___flge@ff1+1),w
	skipz
	goto	u3275
	movf	(___flge@ff2),w
	subwf	(___flge@ff1),w
u3275:
	skipnc
	goto	u3271
	goto	u3270
u3271:
	goto	l2462
u3270:
	
l2460:	
	clrc
	
	goto	l443
	
l2462:	
	setc
	
	line	19
	
l443:	
	return
	callstack 0
GLOBAL	__end_of___flge
	__end_of___flge:
	signat	___flge,8312
	global	_Button_Init

;; *************** function _Button_Init *****************
;; Defined at:
;;		line 110 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=0
	file	"./src/main.c"
	line	110
global __ptext36
__ptext36:	;psect for function _Button_Init
psect	text36
	file	"./src/main.c"
	line	110
	
_Button_Init:	
;incstack = 0
	callstack 4
; Regs used in _Button_Init: []
	line	111
	
l3868:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	114
	bsf	(129)^080h,6	;volatile
	line	115
	bcf	(89/8),(89)&7	;volatile
	line	116
	bsf	(92/8),(92)&7	;volatile
	line	117
	
l120:	
	return
	callstack 0
GLOBAL	__end_of_Button_Init
	__end_of_Button_Init:
	signat	_Button_Init,89
	global	_ADC_Init

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 60 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	line	60
global __ptext37
__ptext37:	;psect for function _ADC_Init
psect	text37
	file	"./src/main.c"
	line	60
	
_ADC_Init:	
;incstack = 0
	callstack 4
; Regs used in _ADC_Init: []
	line	61
	
l3860:	
	movlw	08Eh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	62
	movlw	041h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	63
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1064/8)^080h,(1064)&7	;volatile
	line	64
	
l96:	
	return
	callstack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
	signat	_ADC_Init,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 146 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		i1_UART_Write_String
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=0
	line	146
global __ptext38
__ptext38:	;psect for function _ISR
psect	text38
	file	"./src/main.c"
	line	146
	
_ISR:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text38
	line	148
	
i1l3330:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u495_21
	goto	u495_20
u495_21:
	goto	i1l3350
u495_20:
	line	149
	
i1l3332:	
	movf	(26),w	;volatile
	movwf	(_bluetoothData)	;volatile
	line	152
	
i1l3334:	
		movlw	65
	xorwf	((_bluetoothData)),w	;volatile
	btfsc	status,2
	goto	u496_21
	goto	u496_20
u496_21:
	goto	i1l141
u496_20:
	
i1l3336:	
		movlw	97
	xorwf	((_bluetoothData)),w	;volatile
	btfss	status,2
	goto	u497_21
	goto	u497_20
u497_21:
	goto	i1l3340
u497_20:
	
i1l141:	
	line	153
	movlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_currentState)^0180h
	line	154
	movlw	01h
	movwf	(_servo_needs_update)^0180h	;volatile
	line	155
	
i1l3338:	
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(i1UART_Write_String@str)
	movlw	80h
	movwf	(i1UART_Write_String@str+1)
	fcall	i1_UART_Write_String
	line	156
	goto	i1l3350
	
i1l3340:	
		movlw	67
	xorwf	((_bluetoothData)),w	;volatile
	btfsc	status,2
	goto	u498_21
	goto	u498_20
u498_21:
	goto	i1l3344
u498_20:
	
i1l3342:	
		movlw	99
	xorwf	((_bluetoothData)),w	;volatile
	btfss	status,2
	goto	u499_21
	goto	u499_20
u499_21:
	goto	i1l3350
u499_20:
	line	157
	
i1l3344:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_currentState)^0180h
	line	158
	
i1l3346:	
	movlw	01h
	movwf	(_servo_needs_update)^0180h	;volatile
	line	159
	
i1l3348:	
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	movwf	(i1UART_Write_String@str)
	movlw	80h
	movwf	(i1UART_Write_String@str+1)
	fcall	i1_UART_Write_String
	line	164
	
i1l3350:	
	btfss	(89/8),(89)&7	;volatile
	goto	u500_21
	goto	u500_20
u500_21:
	goto	i1l147
u500_20:
	line	165
	
i1l3352:	
	bcf	(89/8),(89)&7	;volatile
	line	168
	movlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_servo_needs_update)^0180h	;volatile
	line	170
	
i1l147:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
	global	i1_UART_Write_String

;; *************** function i1_UART_Write_String *****************
;; Defined at:
;;		line 53 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;  str             2    1[COMMON] PTR const unsigned char 
;;		 -> STR_11(5), STR_10(5), main@tempStr(20), STR_8(5), 
;;		 -> STR_7(5), STR_6(18), STR_5(29), STR_4(33), 
;;		 -> STR_3(26), STR_2(17), STR_1(16), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		i1_UART_Write
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	line	53
global __ptext39
__ptext39:	;psect for function i1_UART_Write_String
psect	text39
	file	"./src/main.c"
	line	53
	
i1_UART_Write_String:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in i1_UART_Write_String: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	54
	
i1l3322:	
	goto	i1l3328
	line	55
	
i1l3324:	
	movf	(i1UART_Write_String@str+1),w
	movwf	btemp+1
	movf	(i1UART_Write_String@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	i1_UART_Write
	
i1l3326:	
	movlw	01h
	addwf	(i1UART_Write_String@str),f
	skipnc
	incf	(i1UART_Write_String@str+1),f
	movlw	0
	addwf	(i1UART_Write_String@str+1),f
	line	54
	
i1l3328:	
	movf	(i1UART_Write_String@str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(i1UART_Write_String@str),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u494_21
	goto	u494_20
u494_21:
	goto	i1l3324
u494_20:
	line	57
	
i1l93:	
	return
	callstack 0
GLOBAL	__end_ofi1_UART_Write_String
	__end_ofi1_UART_Write_String:
	signat	i1_UART_Write_String,4185
	global	i1_UART_Write

;; *************** function i1_UART_Write *****************
;; Defined at:
;;		line 47 in file "./src/main.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_UART_Write_String
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	line	47
global __ptext40
__ptext40:	;psect for function i1_UART_Write
psect	text40
	file	"./src/main.c"
	line	47
	
i1_UART_Write:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in i1_UART_Write: [wreg]
	movwf	(i1UART_Write@data)
	line	48
	
i1l3256:	
	
i1l84:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u488_21
	goto	u488_20
u488_21:
	goto	i1l84
u488_20:
	line	49
	
i1l3258:	
	movf	(i1UART_Write@data),w
	movwf	(25)	;volatile
	line	50
	
i1l87:	
	return
	callstack 0
GLOBAL	__end_ofi1_UART_Write
	__end_ofi1_UART_Write:
	signat	i1_UART_Write,4185
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
