       .include ATmega32.def

        jmp	IRQ_NONE                    ; STORE PROGRAM MEMORY READY

IRQ_NONE:
        reti
	com	r17	;
	com	r17	;
	lsl	r17	;
	jmp	CALC_DCOB	; skip sample calc for DCO A if noise bit set

1:
	lds	r22, PULSE_WIDTH
	cp	R17, R22
	;; next 6 lines could be ldi r17,255; brlo 1f; sbci r17,1;
	brlo	1f
	ldi	R17, 255
	rjmp	2f
1:
	ldi	R17, 0
2:
	sbrs	R30, 1			    ; 0/1 (DCO A = saw/squ)
	mov	R17, PhaseA_2	    ; only when sawtooth

;Calculate DCO B
CALC_DCOB:
	mov	R16, PhaseB_2
	rol	R16			        ; R16.7 --> Cy
	sbc	R16, R16	        ; R16 = 0 or 255 (square wave)
	sbrs	R30, 2			    ; 0/1 (DCO B = saw/squ)
	mov	R16, PhaseB_2	    ; only when sawtooth

CALC_DIST:
	sbrc	R30, 0			    ; 0/1 (OSC DIST = off/on)
    	eor	R17, R16
	sbrs	R30, 3
	ldi	R16, 128	        ; when DCO B = off

;-------------------------------------------------------------------------------------------------------------------
; Sum Oscillators
;
; Combines DCOA (in r17) and DCOB (in r16) waves. Convert both oscillators to 8-bit signed values, multiplies each
; by its DCO scaling level and sums them to produce a 16-bit signed result in HDAC:LDAC (r17:r16)
;
;-------------------------------------------------------------------------------------------------------------------

	lds	r22, DCOA_LEVEL	    ;
	subi    r17, $80			; -127..127
	mulsu	r17, r22			; signed DCO A wave * level
	movw	r30, r0				; store value in temp register
	lds	r22, DCOB_LEVEL
	subi	r16, $80			; -127..127
	mulsu	r16, r22			; signed DCO B wave * level
	add16	r30, r0				; sum scaled waves
  	sts 	WAVEB,r16			; store signed DCO B wave for fm
	movw	r16, r30			; place signed output in HDAC:LDAC
	movw	OSC_OUT_L, r16		; keep a copy for highpass filter

;DCF:

;-------------------------------------------------------------------------------------------------------------------
; Digitally Controlled Filter
;
; A 2-pole resonant low pass filter:
;
; a += f * ((in - a) + q * (a - b));
; b += f * (a - b);
;
; Input 16-Bit signed HDAC:LDAC (r17:r16), already scaled to minimize clipping (reduced to 25% of full code).
;-------------------------------------------------------------------------------------------------------------------

                    		;calc (in - a) ; both signed
        clc							;clear carry
	sub16	LDAC, a_L
                            	;check for overflow / do hard clipping
        brvc 1f     		;no overflow

        			;sub overflow happened -> set to min
                            	;b1000.0000 b0000.0001 -> min
                            	;0b0111.1111 0b1111.1111 -> max

        ldi    	LDAC, 0b00000001
        ldi 	HDAC, 0b10000000

1: 						;when overflow is clear

        							;(in-a) is now in HDAC:LDAC as signed
        							;now calc q*(a-b)

        lds    r22,SCALED_RESONANCE	;load filter Q value, unsigned

	mov16	r20, a_L            	; load 'a' , signed

        lds16    z_L, b_L            	; load 'b', signed
