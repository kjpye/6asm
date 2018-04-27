	 .include def/Extensa/extensa.def
	.def ar = a13
	.def as = a14
	.def at = a9
         abs ar, at
         add ar, as, at
        addi at, as, 104
       addmi at, as, 20163
       addx2 ar, as, at
       addx4 ar, as, at
       addx8 ar, as, at
         and ar, as, at
        ball as, at, label
        bany as, at, label
         bbc as, at, label
        bbci as, 24, label
      bbci.l as, 22, label
         bbs as, at, label
        bbsi as, 12, label
       bsi.l as, 15, label
         beq as, at, label
        beqi as, 23, label
        beqz as, label
         bge as, at, label
        bgei as, 23, label
        bgeu as, at, label
       bgeui as, 23, label
        bgez as, label
         blt as, at, label
        blti as, 23, label
        bltu as, at, label
       bltui as, 23, label
        bltz as, label
       bnall as, at, label
         bne as, at, label
        bnei as, 23, label
        bnez as, label
       bnone as, at, label
       call0 label
      callx0 as
       dsync
       esync
       extui ar, at, 23, 23
        extw
       break 7, 7
     break.n 7 only with code density option
       all4 bt, bs
       all8 bt, bs
       andb br, bs, bt
       andbc br, bs, bt
       any4 bt, bs
       any8 bt, bs
       bf bs, label
       bt bs, label
       abs.s fr, fs
       add.s fr, fs, ft
       ceil.s ar, fs, 7
       float.s fr, as, 7
       floor.s ar, fs, 7
       add.n ar, as, at
       addi.n ar, as, 23
       beqz.n as, label
       bnez.n as, label
       call4 label
       call8 label
       call12 label
       callx4 as
       callx8 as
       callx12 as
       entry as, 764
       clamps ar, as, 18
       dhi as, 768
       dhwb as, 768
       dhwbi as, 768
       dii as, 768
       diwb as, 64
       diwbi as, 64
       dpfr as, 768
       dpfro as, 768
       dpfw as, 768
       dpfwo as, 768
       dhu as, 64
       diu as, 64
       dpfl as, 64
       excw
       idtlb as
       ihi as, 768
       ihu as, 64
       iii as, 768
       iitlb as
       iiu as, 64
       ill
       ill.n
       ipf as, 768
       ipfl as, 64
       isync
       j label
       j.l label, an
       jx as
       l8ui at, as, 123
       l16si at, as, 246
       l16ui at, as, 246
       l32ai at, as, 10020
       l32e at, as, -54
       l32i at, as, 768
       l32i.n at, as, 48
       l32r at, label
       ldct at, as
       lddec mw, as
       lict at, as
       licw at, as
       loop as, label
       looptz as, label
       loopnz as, label
       lsi ft, as, 768
       lsiu ft, as, 768
       ldx fr, as, at
       lsxu fr, as, at
       madd.s fr, fs, ft
       max ar, as, at
       maxu ar, as, at
       memw
       min ar, as, at
       minu ar, as, at
       mov ar, as (-> or ar, as, as; ar != as)
       mov.n at, as
       mov.s fr, fs
       moveqz ar, as, at
       moveqz.s fr, fs, at
       movf ar, as, at
       movf.s fr, fs, bt
       movgez ar, as, at
       movgez fr, fs, at
       movi at, -1056
       movi.n as, 47
       movltz ar, as, at
       movltz.s ar, as, at
       movnez ar, as, at
       movnez.s fr, fs, at
       movsp at, as
       movt ar, as, bt
       movt.s fr, fs, bt
       msub.s fr, fs, ft
       mul.aa.ll as, at
       mul.aa.lh as, at
       mul.aa.hl as, at
       mul.aa.hh as, at
       mul.ad.ll as, my
       mul.ad.lh as, my
       mul.ad.hl as, my
       mul.ad.hh as, my
       mul.da.ll mx, at
       mul.da.lh mx, at
       mul.da.hl mx, at
       mul.da.hh mx, at
       mul.dd.ll mx, my
       mul.dd.lh mx, my
       mul.dd.hl mx, my
       mul.dd.hh mx, my
       mul.s fr, fs, ft
       mul16s ar, as, at
       mul16u ar, as, at
       mula.aa.* as, at
       mula.aa.* as, at
label:	
       mula.aa.* as, at
       mula.aa.* as, at
       mula.ad.* as, my
       mula.ad.* as, my
       mula.ad.* as, my
       mula.ad.* as, my
       mula.da.( mx, at
       mula.da.( mx, at
       mula.da.( mx, at
       mula.da.( mx, at
       mula.da.*.lddec mw, as, mx, at
       mula.da.*.lddec mw, as, mx, at
       mula.da.*.lddec mw, as, mx, at
       mula.da.*.lddec mw, as, mx, at
       mula.da.*.ldinc mw, as, mx, at
       mula.da.*.ldinc mw, as, mx, at
       mula.da.*.ldinc mw, as, mx, at
       mula.da.*.ldinc mw, as, mx, at
       mula.dd.* mx, my
       mula.dd.* mx, my
       mula.dd.* mx, my
       mula.dd.* mx, my
       mula.dd.*.lddec mw, as, mx, my
       mula.dd.*.lddec mw, as, mx, my
       mula.dd.*.lddec mw, as, mx, my
       mula.dd.*.lddec mw, as, mx, my
       mula.dd.*.ldinc mw, as, mx, my
       mula.dd.*.ldinc mw, as, mx, my
       mula.dd.*.ldinc mw, as, mx, my
       mula.dd.*.ldinc mw, as, mx, my
       mull ar, as, at
       muls.aa.* as, at
       muls.aa.* as, at
       muls.aa.* as, at
       muls.aa.* as, at
       muls.ad.* as, my
       muls.ad.* as, my
       muls.ad.* as, my
       muls.ad.* as, my
       muls.da.* mx, at
       muls.da.* mx, at
       muls.da.* mx, at
       muls.da.* mx, at
       muls.dd.* mx, my
       muls.dd.* mx, my
       muls.dd.* mx, my
       muls.dd.* mx, my
       mulsh ar, as, at
       muluh ar, as, at
       neg ar, at
       neg.s fr, fs
       nop (or macro for "or an, an, an")
       nop.n
       nsa at, as
       nsau at, as
       oeq.s br, fs, ft
       ole.s br, fs, ft
       olt.s br, fs, ft
       or ar, as, at
       orb br, bs, bt
       orbc br, bs, bt
       pdtlb at, as
       pitlb at, as
       quos ar, as, at
       quou ar, as, at
       rdtlb0 at, as
       rdtlb1 at, as
       rems ar, as, at
       remu ar, as, at
       rer at, as
       ret
       ret.n
       retw
       retw.n
       rfdd
       rfde
       rfdo
       rfe
       rfi 7
       rfme
       rfr ar, as
       rfue
       rfwo
       rfwu
       ritlb0 at, as
       ritlb1 ar, as
       rotw -8..7
       round.s ar, fs, 7
       rsil at, 7
       rsr.* at; rsr at, *; rsr at, 123
       rsync
       rur.* ar; rur ar, *
       s8i at, as, 123
       s16i at, as, 246
       s32ci at, as, 768
       s32e at, as, -64..-4
       s32i at, as, 768
       s32i.n at, as, 48
       s32ri at, as, 768
       sdct at, as
       sext ar, as, 14
       sict at, as
       sicw at, as
       simcall
       sll ar, as
       slli ar, as, 23
       sra ar, at
       srai ar, at, 23
       src ar, as, at
       srl ar, at
       srli ar, at, 7
       ssa8b as
       ssa8l as
       ssai 15
       ssi ft, as, 768
       ssiu ft, as, 768
       ssl as
       ssr as
       ssx fr, as, at
       ssxu fr, as, at
       sub ar, as, at
       sub.s fr, fs, ft
       subx2 ar, as, at
       subx4 ar, as, at
       subx8 ar, as, at
       syscall
       trunc.s ar, fs, 7
       ueq.s br, fs, ft
       ufloat.s fr, as, 7
       ule.s br, fs, ft
       ult.s br, fs, ft
       umul.aa.* as, at
       umul.aa.* as, at
       umul.aa.* as, at
       umul.aa.* as, at
       un.s br, fs, ft
       utrunc.s ar, fs, 7
       waiti 7
       wdtlb at, as
       wer at, as
       wfr fr, as
       witlb at, as
       wsr.* at; wsr at,* ; wsr at, 123
       wur.* at; wur at, *
       xor ar, as, at
       xorb br, bs, bt
       xsr.* at; xsr at, *; xsr at, 123
