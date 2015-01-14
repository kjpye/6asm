 .include i8051.def

; Test of i8051 assembler

 .code
 .org 0

 nop
 ret
 reti
 jbc 21, 0x21
 inc @r1
 dec 123
 add a, #12
 add a, 123
1
 add a, @r0
 add a, r3
 ajmp 0x123
 acall 0x123
 ljmp 0x1234
 lcall 0x3456
 rrc a
 jc 1b
 orl 123, a
 orl a, 123
 orl c, 23
 orl c, /23
