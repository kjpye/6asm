 .include i8051.def

; Test of i8051 assembler

 .code
 .org 0

 nop
 ajmp 0x000
 ljmp 1f
 rr a
 inc a
 inc 123
 inc @r0
 inc @r1
 inc r0
 inc r1
 inc r2
 inc r3
 inc r4
 inc r5
 inc r6
 inc r7
 jbc 23, 1f
 acall 0x000
 lcall 1f
 rrc a
 dec a
 dec 123
 dec @r0
 dec @r1
 dec r0
 dec r1
 dec r2
 dec r3
 dec r4
 dec r5
 dec r6
 dec r7
 jb 23, 1f
 ajmp 0x100
 ret
 rl a
 add a, #45
 add a, 123
 add a, @r0
 add a, @r1
 add a, r0
 add a, r1
 add a, r2
 add a, r3
 add a, r4
 add a, r5
 add a, r6
 add a, r7
 jnb 23, 123
 acall 0x100
 reti
 rlc a
 addc a, #45
 addc a, 123
 addc a, @r0
 addc a, @r1
 addc a, r0
 addc a, r1
 addc a, r2
 addc a, r3
 addc a, r4
 addc a, r5
 addc a, r6
 addc a, r7
 jc 1f
 ajmp 0x200
 orl 123, a
 orl 123, #12
 orl a, #45
 orl a, 123
 orl a, @r0
 orl a, @r1
 orl a, r0
 orl a, r1
 orl a, r2
 orl a, r3
 orl a, r4
 orl a, r5
 orl a, r6
 orl a, r7
 jnc 1f
 acall 0x200
 anl 123, a
 anl 123, #12
 anl a, #45
 anl a, 123
 anl a, @r0
 anl a, @r1
 anl a, r0
 anl a, r1
 anl a, r2
 anl a, r3
 anl a, r4
 anl a, r5
 anl a, r6
 anl a, r7
 jz 1f
 ajmp 0x300
 xrl 123, a
 xrl 123, #12
 xrl a, #45
 xrl a, 123
 xrl a, @r0
 xrl a, @r1
 xrl a, r0
 xrl a, r1
 xrl a, r2
 xrl a, r3
 xrl a, r4
 xrl a, r5
 xrl a, r6
 xrl a, r7
 jnz 1f
 acall 0x300
 orl C, 23
 jmp @a+dptr
 mov a, #12
 mov 34, #12
 mov @r0, #12
 mov @r1, #12
 mov r0, #12
 mov r1, #12
 mov r2, #12
 mov r3, #12
 mov r4, #12
 mov r5, #12
 mov r6, #12
 mov r7, #12
 sjmp 1f
 ajmp 0x400
 anl C, 23
 movc a, @a+pc
 div ab
 mov 23,34
 mov 23, @r0
 mov 23, @r1
 mov 23, r0
 mov 23, r1
 mov 23, r2
 mov 23, r3
 mov 23, r4
 mov 23, r5
 mov 23, r6
 mov 23, r7
 mov dptr, #12
 acall 0x400
 mov 23, C
 movc a, @a+dptr
 subb a, #12
 subb a, 23
 subb a, @r0
 subb a, @r1
 subb a, r0
 subb a, r1
 subb a, r2
 subb a, r3
 subb a, r4
 subb a, r5
 subb a, r6
 subb a, r7
 orl C, /23
 ajmp 0x500
 mov C, 23
 inc dptr
 mul ab
 fdb 0xa5
 mov @r0, 23
 mov @r1, 23
 mov r0, 23
 mov r1, 23
 mov r2, 23
 mov r3, 23
 mov r4, 23
 mov r5, 23
 mov r6, 23
 mov r7, 23
 anl C, /23
 acall 0x500
 cpl 23
 cjne a, #23, 1f
 cjne A, 23, 1f
 cjne @r0, #23, 1f
 cjne @r1, #23, 1f
 cjne r0, #23, 1f
 cjne r1, #23, 1f
 cjne r2, #23, 1f
 cjne r3, #23, 1f
 cjne r4, #23, 1f
 cjne r5, #23, 1f
 cjne r6, #23, 1f
 cjne r7, #23, 1f
 push 23
 ajmp 0x600
 clr 23
 clr c
 swap a
 xch a, 23
 xch a, @r0
 xch a, @r1
 xch a, r0
 xch a, r1
 xch a, r2
 xch a, r3
 xch a, r4
 xch a, r5
 xch a, r6
 xch a, r7
 pop 23
 acall 0x600
 setb 23
 setb c
 da a
 djnz 23, 1f
 xchd a, @r0
 xchd a, @r1
 djnz r0, 1f
 djnz r1, 1f
 djnz r2, 1f
 djnz r3, 1f
 djnz r4, 1f
 djnz r5, 1f
 djnz r6, 1f
 djnz r7, 1f
 movx a, @dptr
 ajmp 0x700
 movx a, @r0
 movx a, @r1
 clr a
 mov a, 23
 mov a, @r0
 mov a, @r1
 mov a, r0
 mov a, r1
 mov a, r2
 mov a, r3
 mov a, r4
 mov a, r5
 mov a, r6
 mov a, r7
 movx @dptr, a
 acall 0x700
 movx @r0, a
 movx @r1, a
 cpl a
 mov 23, a
 mov @r0, a
 mov @r1, a
 mov r0, a
 mov r1, a
 mov r2, a
 mov r3, a
 mov r4, a
 mov r5, a
 mov r6, a
 mov r7, a
1
