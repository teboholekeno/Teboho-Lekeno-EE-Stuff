;
; Faith Code.asm
;
; Created: 16-Sep-19 4:54:41 PM
; Author : teboho
;

.INCLUDE "M328PDEF.INC"
	.ORG 0x00

	//DECLARING PORTS AND PINS 
	SER R16                                          ; SETTING PORTD AS THE OUTPORT FOR THE 7SEGMENT DISPLAY
	OUT DDRD, R16

	LDI ZL, LOW (DISPLAY_ARRAY<<1)
	LDI ZH, HIGH (DISPLAY_ARRAY<<1)

	RJMP MAIN
	
MAIN:
	LPM R16, Z
	OUT PORTD, R16
	RJMP MAIN

                                         
//SEVEN SEGMENT DISPLAY LOOK-UP TABLE
	.ORG $500
DISPLAY_ARRAY: .DB 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10



