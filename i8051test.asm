 .include i8051.def

; Test of i8051 assembler

 .code
 .org 0

 nop
 ajmp 0
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
 acall 1f
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
 acall 1f
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
 acall 1f
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
1
