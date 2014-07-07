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
 ldreqb r1,[r6,#5]
 str r1,place
place
 ldmfd sp!,{r0,r1,r2}
 stmia r0,{r0-r15}
 ldmfd sp!,{r15}
 ldmfd sp!,{r15}^
 stmfd r13,{r0-r14}^
 stmfd r13,{r0-r2,r6-r14}^
 stmfd r13,{r2}^
 stmfd sp!,{r0-r3,r14}
 bl place
 ldmed sp!,{r0-r3,r15}

 .arch thumb
 adc r1,r3,#0x234
