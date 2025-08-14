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
	FNROOT	_main
	global	_PORTD
_PORTD	set	0x8
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISD
_TRISD	set	0x88
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config BOREN = "OFF"
	config LVP = "OFF"
	config CPD = "OFF"
	config WRT = "OFF"
	config CP = "OFF"
	file	"build\prueba.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      0       0
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!COMMON              14      0       0      0.0%
;!BANK0               80      0       0      0.0%
;!BANK1               80      0       0      0.0%
;!BANK3               96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0       0      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "./src/prueba.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"./src/prueba.c"
	line	15
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"./src/prueba.c"
	line	15
	
_main:	
;incstack = 0
	callstack 8
; Regs used in _main: [status,2]
	line	16
	
l558:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	17
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	20
	
l560:	
	movlw	06h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	23
	
l562:	
	movlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	25
	
l11:	
	line	27
	
l12:	
	goto	l11
	global	start
	ljmp	start
	callstack 0
	line	28
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
