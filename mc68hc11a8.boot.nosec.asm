 .include mc68hc11.def
* BOOTLOADER FIRMWARE FOR MC68HC11A8 W/O SECURITY

***************************************************
* Thu Dec 11 18:46:19 CST 1986
***************************************************
* EQUATES FOR USE WITH INDEX OFFSET = $1000
PORTD EQU $08
DDRD EQU $09
SPCR EQU $28
BAUD EQU $2B
SCCR1 EQU $2C
SCCR2 EQU $2D
SCSR EQU $2E
SCDAT EQU $2F
PPROG EQU $3B
TEST1 EQU $3E
CONFIG EQU $3F


(FOR DWOM BIT)

* MORE EQUATES
*
EEPSTR EQU $B600 START OF EEPROM
EEPEND EQU $B7FF END OF EEPROM
*****************************************************
* THIS BOOTSTRAP PROGRAM ALLOWS THE USER TO
* DOWNLOAD A PROGRAM OF EXACTLY 256 BYTES.
* THE PROGRAM MUST START AT $0000.
* EACH BYTE OF THE PROGRAM IS RECEIVED BY THE
* SCI, STARTING WITH THE $0000 BYTE AND WORKING
* UP TO THE $00FF BYTE.
*
* THE TRANSMITTER WILL BE USED FOR THE PURPOSE
* OF COMMUNICATION TO THE OUTSIDE WORLD.
*****************************************************
 ORG $BF40
BEGIN EQU *

* INIT STACK
 LDS #$00FF
* INIT X REG FOR INDEXED ACCESS TO REGISTERS
 LDX #$1000
* PUT PORT D IN WIRE OR MODE
 BSET SPCR,X $20
* INIT SCI AND RESTART BAUD DIVIDER CHAIN
 LDAA #$A2 DIV BY 16
 STAA BAUD,X
* RECEIVER & TRANSMITTER ENABLED
 LDAA #$0C
 STAA SCCR2,X

* SECURITY CODE IS REMOVED

* SEND BREAK TO SIGNAL START OF DOWNLOAD
 BSET SCCR2,X $01
* CLEAR BREAK AS SOON AS START BIT IS DETECTED
 BRSET PORTD,X $01 *
 BCLR SCCR2,X $01 CLEAR BREAK
* WAIT FOR FIRST CHARACTER (USERS SEND $FF)
 BRCLR SCSR,X $20 * WAIT FOR RDRF
 LDAA SCDAT,X READ DATA
* IF DATA = $00 (BREAK OR $00), THEN JUMP TO EEPROM
 BNE NOTZERO
 JMP $B600
NOTZERO EQU *
* IF DATA = $55, THEN SKIP DOWNLOAD (TEST MODE)
 CMPA #$55
 BEQ STAR
* IF DATA = $FF, THEN /16 IS CORRECT BAUD
 CMPA #$FF
 BEQ BAUDOK
* ELSE CHANGE TO /104 (/13 & /8) 1200 @ 2MHZ
 BSET BAUD,X $33
* THEN DOWNLOAD 256 BYTE PROGRAM
BAUDOK EQU *
 LDY #$0000 INIT POINTER
* READ IN PROGRAM AND PUT INTO RAM
BK2 EQU *
 BRCLR SCSR,X $20 * WAIT FOR RDRF
 LDAA SCDAT,X
 STAA $00,Y
 STAA SCDAT,X HANDSHAKE
 INY
* UNTIL THE END IS REACHED
 CPY #$0100
 BNE BK2
*****************************************************
* ALL START USER’S PROGRAM
*
STAR EQU *
 JMP $0000
 
ORG $BFD4 NEEDED IF BOOTROM < MAX

* MASK I. D. BYTE
 FDB $0000
*****************************************************
* VECTORS
*
 FDB $100-60 SCI
 FDB $100-57 SPI
 FDB $100-54 PULSE ACCUM INPUT EDGE
 FDB $100-51 PULSE ACCUM OVERFLOW
 FDB $100-48 TIMER OVERFLOW
 FDB $100-45 TIMER OUTPUT COMPARE 5
 FDB $100-42 TIMER OUTPUT COMPARE 4
 FDB $100-39 TIMER OUTPUT COMPARE 3
 FDB $100-36 TIMER OUTPUT COMPARE 2
 FDB $100-33 TIMER OUTPUT COMPARE 1
 FDB $100-30 TIMER INPUT CAPTURE 3
 FDB $100-27 TIMER INPUT CAPTURE 2
 FDB $100-24 TIMER INPUT CAPTURE 1
 FDB $100-21 REAL TIME INT
 FDB $100-18 IRQ
 FDB $100-15 XIRQ
 FDB $100-12 SWI
 FDB $100-9 ILLEGAL OP-CODE
 FDB $100-6 COP FAIL
 FDB $100-3 CLOCK MONITOR
 FDB #BEGIN RESET
*****************************************************
* END
*****************************************************
