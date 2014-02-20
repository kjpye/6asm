 .include arm.def
 .ram
fred: .long 4
bill: .long 1
 undefcc
 undef

 mul r1,r3,r88
 muls r1,r3,r88
 mlacs r4, r2, r8, r10
 mla r4,r2,r8,r10
 umull r1, r2, r3, r4
 smlal r5, r6, r7, r8
 swp r1, r2, [r3]
 swpb r1, r2, [r3]
 bx r4
 bxcs r5
 ldrh r1, [r2,-r3]!
 strh r3,[r4,#14]
 ldrsb r8,[r2],#-223
 ldrnesh r11,[r0]
here
 strh r5, [pc, #(fred-here-8)]
 strh r5, fred
fred
 str r1,[r2,r4]!
 str r1,[r2],r4
 ldr r1,[r2,r3,lsl#2]
 ldreq br1,[r6,#5]
 str r1,place
place
