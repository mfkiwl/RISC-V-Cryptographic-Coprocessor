.data

.LC0:
	.string	"abc"
	
	
	ADDTO4_temp: .word 0
	ADDTO4_temp2: .word 0
	ADDTO2_temp: .word 0
	ROTR_temp1: .word 0 0
	ROTR_temp2: .word 0 0
	SIGMA0_temp1: .word 0 0
	SIGMA0_temp2: .word 0 0
	SIGMA0_temp3: .word 0 0
	SIGMA0_temp4: .word 0 0
	SIGMA1_temp1: .word 0 0
	SIGMA1_temp2: .word 0 0
	SIGMA1_temp3: .word 0 0
	SIGMA1_temp4: .word 0 0
	sigma0_temp1: .word 0 0
	sigma0_temp2: .word 0 0
	sigma0_temp3: .word 0 0
	sigma0_temp4: .word 0 0
	sigma1_temp1: .word 0 0
	sigma1_temp2: .word 0 0
	sigma1_temp3: .word 0 0
	sigma1_temp4: .word 0 0
	Ch_temp1: .word 0 0
	Ch_temp2: .word 0 0
	Ch_temp3: .word 0 0
	Maj_temp1: .word 0 0
	Maj_temp2: .word 0 0
	Maj_temp3: .word 0 0
	Maj_temp4: .word 0 0
	addTemp: .word 0 0 0 0
	
masks.1655:
	.byte	0
	.byte	-128
	.byte	-64
	.byte	-32
	.byte	-16
	.byte	-8
	.byte	-4
	.byte	-2
#	.align	2
#	.type	markbit.1656, @object
	.size	markbit.1656, 8
markbit.1656:
	.byte	-128
	.byte	64
	.byte	32
	.byte	16
	.byte	8
	.byte	4
	.byte	2
	.byte	1
	.section	.rodata
#	.align	2
#	.type	K.1672, @object
	.size	K.1672, 640
K.1672:
	.word	1116352408
	.word	-685199838
	.word	1899447441
	.word	602891725
	.word	-1245643825
	.word	-330482897
	.word	-373957723
	.word	-2121671748
	.word	961987163
	.word	-213338824
	.word	1508970993
	.word	-1241133031
	.word	-1841331548
	.word	-1357295717
	.word	-1424204075
	.word	-630357736
	.word	-670586216
	.word	-1560083902
	.word	310598401
	.word	1164996542
	.word	607225278
	.word	1323610764
	.word	1426881987
	.word	-704662302
	.word	1925078388
	.word	-226784913
	.word	-2132889090
	.word	991336113
	.word	-1680079193
	.word	633803317
	.word	-1046744716
	.word	-815192428
	.word	-459576895
	.word	-1628353838
	.word	-272742522
	.word	944711139
	.word	264347078
	.word	-1953704523
	.word	604807628
	.word	2007800933
	.word	770255983
	.word	1495990901
	.word	1249150122
	.word	1856431235
	.word	1555081692
	.word	-1119749164
	.word	1996064986
	.word	-2096016459
	.word	-1740746414
	.word	-295247957
	.word	-1473132947
	.word	766784016
	.word	-1341970488
	.word	-1728372417
	.word	-1084653625
	.word	-1091629340
	.word	-958395405
	.word	1034457026
	.word	-710438585
	.word	-1828018395
	.word	113926993
	.word	-536640913
	.word	338241895
	.word	168717936
	.word	666307205
	.word	1188179964
	.word	773529912
	.word	1546045734
	.word	1294757372
	.word	1522805485
	.word	1396182291
	.word	-1651133473
	.word	1695183700
	.word	-1951439906
	.word	1986661051
	.word	1014477480
	.word	-2117940946
	.word	1206759142
	.word	-1838011259
	.word	344077627
	.word	-1564481375
	.word	1290863460
	.word	-1474664885
	.word	-1136513023
	.word	-1035236496
	.word	-789014639
	.word	-949202525
	.word	106217008
	.word	-778901479
	.word	-688958952
	.word	-694614492
	.word	1432725776
	.word	-200395387
	.word	1467031594
	.word	275423344
	.word	851169720
	.word	430227734
	.word	-1194143544
	.word	506948616
	.word	1363258195
	.word	659060556
	.word	-544281703
	.word	883997877
	.word	-509917016
	.word	958139571
	.word	-976659869
	.word	1322822218
	.word	-482243893
	.word	1537002063
	.word	2003034995
	.word	1747873779
	.word	-692930397
	.word	1955562222
	.word	1575990012
	.word	2024104815
	.word	1125592928
	.word	-2067236844
	.word	-1578062990
	.word	-1933114872
	.word	442776044
	.word	-1866530822
	.word	593698344
	.word	-1538233109
	.word	-561857047
	.word	-1090935817
	.word	-1295615723
	.word	-965641998
	.word	-479046869
	.word	-903397682
	.word	-366583396
	.word	-779700025
	.word	566280711
	.word	-354779690
	.word	-840897762
	.word	-176337025
	.word	-294727304
	.word	116418474
	.word	1914138554
	.word	174292421
	.word	-1563912026
	.word	289380356
	.word	-1090974290
	.word	460393269
	.word	320620315
	.word	685471733
	.word	587496836
	.word	852142971
	.word	1086792851
	.word	1017036298
	.word	365543100
	.word	1126000580
	.word	-1676669620
	.word	1288033470
	.word	-885112138
	.word	1501505948
	.word	-60457430
	.word	1607167915
	.word	987167468
	.word	1816402316
	.word	1246189591
	.ident	"GCC: (GNU) 8.3.0"


	.file	"sha512_gcc.c"
	.option nopic
	.text
	.local	ADDTO4_temp
	.comm	ADDTO4_temp,4,4
	.local	ADDTO4_temp2
	.comm	ADDTO4_temp2,4,4
	.local	ADDTO2_temp
	.comm	ADDTO2_temp,4,4
	.local	ROTR_temp1
	.comm	ROTR_temp1,8,4
	.local	ROTR_temp2
	.comm	ROTR_temp2,8,4
	.local	SIGMA0_temp1
	.comm	SIGMA0_temp1,8,4
	.local	SIGMA0_temp2
	.comm	SIGMA0_temp2,8,4
	.local	SIGMA0_temp3
	.comm	SIGMA0_temp3,8,4
	.local	SIGMA0_temp4
	.comm	SIGMA0_temp4,8,4
	.local	SIGMA1_temp1
	.comm	SIGMA1_temp1,8,4
	.local	SIGMA1_temp2
	.comm	SIGMA1_temp2,8,4
	.local	SIGMA1_temp3
	.comm	SIGMA1_temp3,8,4
	.local	SIGMA1_temp4
	.comm	SIGMA1_temp4,8,4
	.local	sigma0_temp1
	.comm	sigma0_temp1,8,4
	.local	sigma0_temp2
	.comm	sigma0_temp2,8,4
	.local	sigma0_temp3
	.comm	sigma0_temp3,8,4
	.local	sigma0_temp4
	.comm	sigma0_temp4,8,4
	.local	sigma1_temp1
	.comm	sigma1_temp1,8,4
	.local	sigma1_temp2
	.comm	sigma1_temp2,8,4
	.local	sigma1_temp3
	.comm	sigma1_temp3,8,4
	.local	sigma1_temp4
	.comm	sigma1_temp4,8,4
	.local	Ch_temp1
	.comm	Ch_temp1,8,4
	.local	Ch_temp2
	.comm	Ch_temp2,8,4
	.local	Ch_temp3
	.comm	Ch_temp3,8,4
	.local	Maj_temp1
	.comm	Maj_temp1,8,4
	.local	Maj_temp2
	.comm	Maj_temp2,8,4
	.local	Maj_temp3
	.comm	Maj_temp3,8,4
	.local	Maj_temp4
	.comm	Maj_temp4,8,4
	.local	addTemp
	.comm	addTemp,16,4
	.data
#	.align	2
#	.type	SHA384_H0, @object
	.size	SHA384_H0, 64
SHA384_H0:
	.word	-876896931
	.word	-1056596264
	.word	1654270250
	.word	914150663
	.word	-1856437926
	.word	812702999
	.word	355462360
	.word	-150054599
	.word	1731405415
	.word	-4191439
	.word	-1900787065
	.word	1750603025
	.word	-619958771
	.word	1694076839
	.word	1203062813
	.word	-1090891868
#	.align	2
#	.type	SHA512_H0, @object
	.size	SHA512_H0, 64
SHA512_H0:
	.word	1779033703
	.word	-205731576
	.word	-1150833019
	.word	-2067093701
	.word	1013904242
	.word	-23791573
	.word	-1521486534
	.word	1595750129
	.word	1359893119
	.word	-1377402159
	.word	-1694144372
	.word	725511199
	.word	528734635
	.word	-79577749
	.word	1541459225
	.word	327033209
	.text
#	.align	2
	.globl	SHA512Reset
#	.type	SHA512Reset, @function

	j main

SHA512Reset:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
la a1, SHA512_H0 # Replaced
	lw	a0,-20(s0)
	call	SHA384_512Reset
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra, 0
	.size	SHA512Reset, .-SHA512Reset
#	.align	2
	.globl	SHA512Input
#	.type	SHA512Input, @function
SHA512Input:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-20(s0)
	bnez	a5,.L4
	li	a5,1
	j	.L5
.L4:
	lw	a5,-28(s0)
	bnez	a5,.L6
	li	a5,0
	j	.L5
.L6:
	lw	a5,-24(s0)
	bnez	a5,.L7
	li	a5,1
	j	.L5
.L7:
	lw	a5,-20(s0)
	lw	a5,212(a5)
	beqz	a5,.L8
	lw	a5,-20(s0)
	li	a4,3
	sw	a4,216(a5)
	lw	a5,-20(s0)
	lw	a5,216(a5)
	j	.L5
.L8:
	lw	a5,-20(s0)
	lw	a5,216(a5)
	beqz	a5,.L10
	lw	a5,-20(s0)
	lw	a5,216(a5)
	j	.L5
.L15:
	lw	a5,-20(s0)
	lh	a3,80(a5)
	slli	a5,a3,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,80(a5)
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	lw	a5,-20(s0)
	add	a5,a5,a3
	sb	a4,82(a5)
la a5, addTemp # Replaced
	li	a4,8
	sw	a4,12(a5)
	lw	a5,-20(s0)
	lw	a4,76(a5)
la a5, ADDTO4_temp # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-20(s0)
	lw	a4,76(a5)
la a5, addTemp # Replaced
	lw	a5,12(a5)
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,76(a5)
	lw	a5,-20(s0)
	lw	a4,72(a5)
la a5, ADDTO4_temp2 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-20(s0)
	lw	a4,72(a5)
la a5, addTemp # Replaced
	lw	a5,8(a5)
	lw	a3,-20(s0)
	lw	a2,76(a3)
la a3, ADDTO4_temp # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,72(a5)
	lw	a5,-20(s0)
	lw	a4,68(a5)
la a5, ADDTO4_temp # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-20(s0)
	lw	a4,68(a5)
la a5, addTemp # Replaced
	lw	a5,4(a5)
	lw	a3,-20(s0)
	lw	a2,72(a3)
la a3, ADDTO4_temp2 # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,68(a5)
	lw	a5,-20(s0)
	lw	a4,64(a5)
la a5, addTemp # Replaced
lw a5, 0(a5) # Replaced
	lw	a3,-20(s0)
	lw	a2,68(a3)
la a3, ADDTO4_temp # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,64(a5)
	lw	a5,-20(s0)
	lw	a4,76(a5)
	li	a5,7
	bgtu	a4,a5,.L11
	lw	a5,-20(s0)
	lw	a5,72(a5)
	bnez	a5,.L11
	lw	a5,-20(s0)
	lw	a5,68(a5)
	bnez	a5,.L11
	lw	a5,-20(s0)
	lw	a5,64(a5)
	beqz	a5,.L12
.L11:
	lw	a5,-20(s0)
	lw	a5,216(a5)
	j	.L13
.L12:
	li	a5,2
.L13:
	lw	a4,-20(s0)
	sw	a5,216(a4)
	lw	a5,-20(s0)
	lw	a5,216(a5)
	bnez	a5,.L14
	lw	a5,-20(s0)
	lh	a4,80(a5)
	li	a5,128
	bne	a4,a5,.L14
	lw	a0,-20(s0)
	call	SHA384_512ProcessMessageBlock
.L14:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L10:
	lw	a5,-28(s0)
	addi	a4,a5,-1
	sw	a4,-28(s0)
	bnez	a5,.L15
	lw	a5,-20(s0)
	lw	a5,216(a5)
.L5:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra, 0
	.size	SHA512Input, .-SHA512Input
#	.align	2
	.globl	SHA512FinalBits
#	.type	SHA512FinalBits, @function
SHA512FinalBits:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	mv	a5,a1
	sw	a2,-28(s0)
	sb	a5,-21(s0)
	lw	a5,-20(s0)
	bnez	a5,.L17
	li	a5,1
	j	.L18
.L17:
	lw	a5,-28(s0)
	bnez	a5,.L19
	li	a5,0
	j	.L18
.L19:
	lw	a5,-20(s0)
	lw	a5,216(a5)
	beqz	a5,.L20
	lw	a5,-20(s0)
	lw	a5,216(a5)
	j	.L18
.L20:
	lw	a5,-20(s0)
	lw	a5,212(a5)
	beqz	a5,.L21
	lw	a5,-20(s0)
	li	a4,3
	sw	a4,216(a5)
	lw	a5,-20(s0)
	lw	a5,216(a5)
	j	.L18
.L21:
	lw	a4,-28(s0)
	li	a5,7
	bleu	a4,a5,.L22
	lw	a5,-20(s0)
	li	a4,4
	sw	a4,216(a5)
	lw	a5,-20(s0)
	lw	a5,216(a5)
	j	.L18
.L22:
la a5, addTemp # Replaced
	lw	a4,-28(s0)
	sw	a4,12(a5)
	lw	a5,-20(s0)
	lw	a4,76(a5)
la a5, ADDTO4_temp # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-20(s0)
	lw	a4,76(a5)
la a5, addTemp # Replaced
	lw	a5,12(a5)
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,76(a5)
	lw	a5,-20(s0)
	lw	a4,72(a5)
la a5, ADDTO4_temp2 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-20(s0)
	lw	a4,72(a5)
la a5, addTemp # Replaced
	lw	a5,8(a5)
	lw	a3,-20(s0)
	lw	a2,76(a3)
la a3, ADDTO4_temp # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,72(a5)
	lw	a5,-20(s0)
	lw	a4,68(a5)
la a5, ADDTO4_temp # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-20(s0)
	lw	a4,68(a5)
la a5, addTemp # Replaced
	lw	a5,4(a5)
	lw	a3,-20(s0)
	lw	a2,72(a3)
la a3, ADDTO4_temp2 # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,68(a5)
	lw	a5,-20(s0)
	lw	a4,64(a5)
la a5, addTemp # Replaced
lw a5, 0(a5) # Replaced
	lw	a3,-20(s0)
	lw	a2,68(a3)
la a3, ADDTO4_temp # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,64(a5)
	lw	a5,-20(s0)
	lw	a5,76(a5)
	lw	a4,-28(s0)
	bleu	a4,a5,.L23
	lw	a5,-20(s0)
	lw	a5,72(a5)
	bnez	a5,.L23
	lw	a5,-20(s0)
	lw	a5,68(a5)
	bnez	a5,.L23
	lw	a5,-20(s0)
	lw	a5,64(a5)
	beqz	a5,.L24
.L23:
	lw	a5,-20(s0)
	lw	a5,216(a5)
	j	.L25
.L24:
	li	a5,2
.L25:
	lw	a4,-20(s0)
	sw	a5,216(a4)
la a4, masks.1655 # Replaced
	lw	a5,-28(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lbu	a5,-21(s0)
	and	a5,a4,a5
	andi	a4,a5,0xff
la a3, markbit.1656 # Replaced
	lw	a5,-28(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	or	a5,a4,a5
	andi	a5,a5,0xff
	mv	a1,a5
	lw	a0,-20(s0)
	call	SHA384_512Finalize
	lw	a5,-20(s0)
	lw	a5,216(a5)
.L18:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra, 0
	.size	SHA512FinalBits, .-SHA512FinalBits
#	.align	2
	.globl	SHA512Result
#	.type	SHA512Result, @function
SHA512Result:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a2,64
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	SHA384_512ResultN
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra, 0
	.size	SHA512Result, .-SHA512Result
#	.align	2
#	.type	SHA384_512Reset, @function
SHA384_512Reset:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	bnez	a5,.L29
	li	a5,1
	j	.L30
.L29:
	lw	a5,-36(s0)
	sh	zero,80(a5)
	lw	a5,-36(s0)
	sw	zero,76(a5)
	lw	a5,-36(s0)
	lw	a4,76(a5)
	lw	a5,-36(s0)
	sw	a4,72(a5)
	lw	a5,-36(s0)
	lw	a4,72(a5)
	lw	a5,-36(s0)
	sw	a4,68(a5)
	lw	a5,-36(s0)
	lw	a4,68(a5)
	lw	a5,-36(s0)
	sw	a4,64(a5)
	sw	zero,-20(s0)
	j	.L31
.L32:
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L31:
	lw	a4,-20(s0)
	li	a5,15
	ble	a4,a5,.L32
	lw	a5,-36(s0)
	sw	zero,212(a5)
	lw	a5,-36(s0)
	sw	zero,216(a5)
	li	a5,0
.L30:
	mv	a0,a5
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra, 0
	.size	SHA384_512Reset, .-SHA384_512Reset
#	.align	2
#	.type	SHA384_512ProcessMessageBlock, @function
SHA384_512ProcessMessageBlock:
	addi	sp,sp,-816
	sw	s0,812(sp)
	addi	s0,sp,816
	sw	a0,-804(s0)
	sw	zero,-28(s0)
	lw	a5,-28(s0)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	j	.L34
.L35:
	lw	a4,-804(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lbu	a5,82(a5)
	slli	a4,a5,24
	lw	a5,-28(s0)
	addi	a5,a5,1
	lw	a3,-804(s0)
	add	a5,a3,a5
	lbu	a5,82(a5)
	slli	a5,a5,16
	or	a4,a4,a5
	lw	a5,-28(s0)
	addi	a5,a5,2
	lw	a3,-804(s0)
	add	a5,a3,a5
	lbu	a5,82(a5)
	slli	a5,a5,8
	or	a4,a4,a5
	lw	a5,-28(s0)
	addi	a5,a5,3
	lw	a3,-804(s0)
	add	a5,a3,a5
	lbu	a5,82(a5)
	mv	a2,a5
	lw	a5,-24(s0)
	addi	a3,a5,1
	sw	a3,-24(s0)
	or	a4,a4,a2
	slli	a5,a5,2
	addi	a3,s0,-16
	add	a5,a3,a5
	sw	a4,-708(a5)
	lw	a5,-28(s0)
	addi	a5,a5,4
	lw	a4,-804(s0)
	add	a5,a4,a5
	lbu	a5,82(a5)
	slli	a4,a5,24
	lw	a5,-28(s0)
	addi	a5,a5,5
	lw	a3,-804(s0)
	add	a5,a3,a5
	lbu	a5,82(a5)
	slli	a5,a5,16
	or	a4,a4,a5
	lw	a5,-28(s0)
	addi	a5,a5,6
	lw	a3,-804(s0)
	add	a5,a3,a5
	lbu	a5,82(a5)
	slli	a5,a5,8
	or	a4,a4,a5
	lw	a5,-28(s0)
	addi	a5,a5,7
	lw	a3,-804(s0)
	add	a5,a3,a5
	lbu	a5,82(a5)
	mv	a2,a5
	lw	a5,-24(s0)
	addi	a3,a5,1
	sw	a3,-24(s0)
	or	a4,a4,a2
	slli	a5,a5,2
	addi	a3,s0,-16
	add	a5,a3,a5
	sw	a4,-708(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	addi	a5,a5,8
	sw	a5,-28(s0)
.L34:
	lw	a4,-20(s0)
	li	a5,15
	ble	a4,a5,.L35
	li	a5,16
	sw	a5,-20(s0)
	j	.L36
.L37:
	lw	a5,-24(s0)
	addi	a5,a5,-4
	addi	a4,s0,-724
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	addi	a5,a5,-14
	addi	a4,s0,-724
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	addi	a5,a5,-30
	addi	a4,s0,-724
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-24(s0)
	addi	a5,a5,-32
	addi	a4,s0,-724
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a5,-44(s0)
	lw	a5,-32(s0)
	lw	a5,0(a5)
	srli	a4,a5,19
la a5, ROTR_temp1 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-32(s0)
	lw	a5,0(a5)
	slli	a4,a5,13
	lw	a5,-32(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	srli	a5,a5,19
	or	a4,a4,a5
la a5, ROTR_temp1 # Replaced
	sw	a4,4(a5)
	lw	a5,-32(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	slli	a4,a5,13
la a5, ROTR_temp2 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
	sw	zero,4(a5)
la a5, ROTR_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
lw a5, 0(a5) # Replaced
	or	a4,a4,a5
la a5, sigma1_temp1 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp1 # Replaced
	lw	a4,4(a5)
la a5, ROTR_temp2 # Replaced
	lw	a5,4(a5)
	or	a4,a4,a5
la a5, sigma1_temp1 # Replaced
	sw	a4,4(a5)
la a5, ROTR_temp1 # Replaced
sw zero, 0(a5) # Replaced
	lw	a5,-32(s0)
	lw	a5,0(a5)
	srli	a4,a5,29
la a5, ROTR_temp1 # Replaced
	sw	a4,4(a5)
	lw	a5,-32(s0)
	lw	a5,0(a5)
	slli	a4,a5,3
	lw	a5,-32(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	srli	a5,a5,29
	or	a4,a4,a5
la a5, ROTR_temp2 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-32(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	slli	a4,a5,3
la a5, ROTR_temp2 # Replaced
	sw	a4,4(a5)
la a5, ROTR_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
lw a5, 0(a5) # Replaced
	or	a4,a4,a5
la a5, sigma1_temp2 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp1 # Replaced
	lw	a4,4(a5)
la a5, ROTR_temp2 # Replaced
	lw	a5,4(a5)
	or	a4,a4,a5
la a5, sigma1_temp2 # Replaced
	sw	a4,4(a5)
	lw	a5,-32(s0)
	lw	a5,0(a5)
	srli	a4,a5,6
la a5, sigma1_temp3 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-32(s0)
	lw	a5,0(a5)
	slli	a4,a5,26
	lw	a5,-32(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	srli	a5,a5,6
	or	a4,a4,a5
la a5, sigma1_temp3 # Replaced
	sw	a4,4(a5)
la a5, sigma1_temp2 # Replaced
lw a4, 0(a5) # Replaced
la a5, sigma1_temp3 # Replaced
lw a5, 0(a5) # Replaced
	xor	a4,a4,a5
la a5, sigma1_temp4 # Replaced
sw a4, 0(a5) # Replaced
la a5, sigma1_temp2 # Replaced
	lw	a4,4(a5)
la a5, sigma1_temp3 # Replaced
	lw	a5,4(a5)
	xor	a4,a4,a5
la a5, sigma1_temp4 # Replaced
	sw	a4,4(a5)
la a5, sigma1_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, sigma1_temp4 # Replaced
lw a5, 0(a5) # Replaced
	xor	a5,a4,a5
	sw	a5,-52(s0)
la a5, sigma1_temp1 # Replaced
	lw	a4,4(a5)
la a5, sigma1_temp4 # Replaced
	lw	a5,4(a5)
	xor	a5,a4,a5
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	sw	a5,-56(s0)
	lw	a4,-56(s0)
	lw	a5,-36(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	add	a5,a4,a5
	sw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	add	a5,a4,a5
	lw	a3,-56(s0)
	lw	a4,-48(s0)
	sltu	a4,a3,a4
	andi	a4,a4,0xff
	add	a5,a5,a4
	sw	a5,-60(s0)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	srli	a4,a5,1
la a5, ROTR_temp1 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-40(s0)
	lw	a5,0(a5)
	slli	a4,a5,31
	lw	a5,-40(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	srli	a5,a5,1
	or	a4,a4,a5
la a5, ROTR_temp1 # Replaced
	sw	a4,4(a5)
	lw	a5,-40(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	slli	a4,a5,31
la a5, ROTR_temp2 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
	sw	zero,4(a5)
la a5, ROTR_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
lw a5, 0(a5) # Replaced
	or	a4,a4,a5
la a5, sigma0_temp1 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp1 # Replaced
	lw	a4,4(a5)
la a5, ROTR_temp2 # Replaced
	lw	a5,4(a5)
	or	a4,a4,a5
la a5, sigma0_temp1 # Replaced
	sw	a4,4(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	srli	a4,a5,8
la a5, ROTR_temp1 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-40(s0)
	lw	a5,0(a5)
	slli	a4,a5,24
	lw	a5,-40(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	srli	a5,a5,8
	or	a4,a4,a5
la a5, ROTR_temp1 # Replaced
	sw	a4,4(a5)
	lw	a5,-40(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	slli	a4,a5,24
la a5, ROTR_temp2 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
	sw	zero,4(a5)
la a5, ROTR_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
lw a5, 0(a5) # Replaced
	or	a4,a4,a5
la a5, sigma0_temp2 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp1 # Replaced
	lw	a4,4(a5)
la a5, ROTR_temp2 # Replaced
	lw	a5,4(a5)
	or	a4,a4,a5
la a5, sigma0_temp2 # Replaced
	sw	a4,4(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	srli	a4,a5,7
la a5, sigma0_temp3 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-40(s0)
	lw	a5,0(a5)
	slli	a4,a5,25
	lw	a5,-40(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	srli	a5,a5,7
	or	a4,a4,a5
la a5, sigma0_temp3 # Replaced
	sw	a4,4(a5)
la a5, sigma0_temp2 # Replaced
lw a4, 0(a5) # Replaced
la a5, sigma0_temp3 # Replaced
lw a5, 0(a5) # Replaced
	xor	a4,a4,a5
la a5, sigma0_temp4 # Replaced
sw a4, 0(a5) # Replaced
la a5, sigma0_temp2 # Replaced
	lw	a4,4(a5)
la a5, sigma0_temp3 # Replaced
	lw	a5,4(a5)
	xor	a4,a4,a5
la a5, sigma0_temp4 # Replaced
	sw	a4,4(a5)
la a5, sigma0_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, sigma0_temp4 # Replaced
lw a5, 0(a5) # Replaced
	xor	a5,a4,a5
	sw	a5,-52(s0)
la a5, sigma0_temp1 # Replaced
	lw	a4,4(a5)
la a5, sigma0_temp4 # Replaced
	lw	a5,4(a5)
	xor	a5,a4,a5
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	sw	a5,-64(s0)
	lw	a4,-64(s0)
	lw	a5,-44(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	add	a5,a4,a5
	sw	a5,-64(s0)
	lw	a4,-52(s0)
	lw	a5,-44(s0)
	lw	a5,0(a5)
	add	a5,a4,a5
	lw	a3,-64(s0)
	lw	a4,-48(s0)
	sltu	a4,a3,a4
	andi	a4,a4,0xff
	add	a5,a5,a4
	sw	a5,-68(s0)
	addi	a4,s0,-724
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	addi	a5,a5,4
	lw	a4,-56(s0)
	sw	a4,0(a5)
	addi	a4,s0,-724
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	addi	a5,a5,4
	lw	a3,0(a5)
	lw	a4,-64(s0)
	addi	a2,s0,-724
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a2,a5
	addi	a5,a5,4
	add	a4,a3,a4
	sw	a4,0(a5)
	lw	a4,-60(s0)
	lw	a5,-68(s0)
	add	a5,a4,a5
	addi	a3,s0,-724
	lw	a4,-24(s0)
	slli	a4,a4,2
	add	a4,a3,a4
	addi	a4,a4,4
	lw	a3,0(a4)
	lw	a4,-56(s0)
	sltu	a4,a3,a4
	andi	a4,a4,0xff
	add	a4,a5,a4
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a3,s0,-16
	add	a5,a3,a5
	sw	a4,-708(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addi	a5,a5,2
	sw	a5,-24(s0)
.L36:
	lw	a4,-20(s0)
	li	a5,79
	ble	a4,a5,.L37
	lw	a5,-804(s0)
	lw	a5,0(a5)
	sw	a5,-732(s0)
	lw	a5,-804(s0)
	lw	a5,4(a5)
	sw	a5,-728(s0)
	lw	a5,-804(s0)
	lw	a5,8(a5)
	sw	a5,-740(s0)
	lw	a5,-804(s0)
	lw	a5,12(a5)
	sw	a5,-736(s0)
	lw	a5,-804(s0)
	lw	a5,16(a5)
	sw	a5,-748(s0)
	lw	a5,-804(s0)
	lw	a5,20(a5)
	sw	a5,-744(s0)
	lw	a5,-804(s0)
	lw	a5,24(a5)
	sw	a5,-756(s0)
	lw	a5,-804(s0)
	lw	a5,28(a5)
	sw	a5,-752(s0)
	lw	a5,-804(s0)
	lw	a5,32(a5)
	sw	a5,-764(s0)
	lw	a5,-804(s0)
	lw	a5,36(a5)
	sw	a5,-760(s0)
	lw	a5,-804(s0)
	lw	a5,40(a5)
	sw	a5,-772(s0)
	lw	a5,-804(s0)
	lw	a5,44(a5)
	sw	a5,-768(s0)
	lw	a5,-804(s0)
	lw	a5,48(a5)
	sw	a5,-780(s0)
	lw	a5,-804(s0)
	lw	a5,52(a5)
	sw	a5,-776(s0)
	lw	a5,-804(s0)
	lw	a5,56(a5)
	sw	a5,-788(s0)
	lw	a5,-804(s0)
	lw	a5,60(a5)
	sw	a5,-784(s0)
	sw	zero,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	j	.L38
.L39:
	lw	a5,-764(s0)
	srli	a4,a5,14
la a5, ROTR_temp1 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-764(s0)
	slli	a4,a5,18
	lw	a5,-760(s0)
	srli	a5,a5,14
	or	a4,a4,a5
la a5, ROTR_temp1 # Replaced
	sw	a4,4(a5)
	lw	a5,-760(s0)
	slli	a4,a5,18
la a5, ROTR_temp2 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
	sw	zero,4(a5)
la a5, ROTR_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
lw a5, 0(a5) # Replaced
	or	a4,a4,a5
la a5, SIGMA1_temp1 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp1 # Replaced
	lw	a4,4(a5)
la a5, ROTR_temp2 # Replaced
	lw	a5,4(a5)
	or	a4,a4,a5
la a5, SIGMA1_temp1 # Replaced
	sw	a4,4(a5)
	lw	a5,-764(s0)
	srli	a4,a5,18
la a5, ROTR_temp1 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-764(s0)
	slli	a4,a5,14
	lw	a5,-760(s0)
	srli	a5,a5,18
	or	a4,a4,a5
la a5, ROTR_temp1 # Replaced
	sw	a4,4(a5)
	lw	a5,-760(s0)
	slli	a4,a5,14
la a5, ROTR_temp2 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
	sw	zero,4(a5)
la a5, ROTR_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
lw a5, 0(a5) # Replaced
	or	a4,a4,a5
la a5, SIGMA1_temp2 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp1 # Replaced
	lw	a4,4(a5)
la a5, ROTR_temp2 # Replaced
	lw	a5,4(a5)
	or	a4,a4,a5
la a5, SIGMA1_temp2 # Replaced
	sw	a4,4(a5)
la a5, ROTR_temp1 # Replaced
sw zero, 0(a5) # Replaced
	lw	a5,-764(s0)
	srli	a4,a5,9
la a5, ROTR_temp1 # Replaced
	sw	a4,4(a5)
	lw	a5,-764(s0)
	slli	a4,a5,23
	lw	a5,-760(s0)
	srli	a5,a5,9
	or	a4,a4,a5
la a5, ROTR_temp2 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-760(s0)
	slli	a4,a5,23
la a5, ROTR_temp2 # Replaced
	sw	a4,4(a5)
la a5, ROTR_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
lw a5, 0(a5) # Replaced
	or	a4,a4,a5
la a5, SIGMA1_temp3 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp1 # Replaced
	lw	a4,4(a5)
la a5, ROTR_temp2 # Replaced
	lw	a5,4(a5)
	or	a4,a4,a5
la a5, SIGMA1_temp3 # Replaced
	sw	a4,4(a5)
la a5, SIGMA1_temp2 # Replaced
lw a4, 0(a5) # Replaced
la a5, SIGMA1_temp3 # Replaced
lw a5, 0(a5) # Replaced
	xor	a4,a4,a5
la a5, SIGMA1_temp4 # Replaced
sw a4, 0(a5) # Replaced
la a5, SIGMA1_temp2 # Replaced
	lw	a4,4(a5)
la a5, SIGMA1_temp3 # Replaced
	lw	a5,4(a5)
	xor	a4,a4,a5
la a5, SIGMA1_temp4 # Replaced
	sw	a4,4(a5)
la a5, SIGMA1_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, SIGMA1_temp4 # Replaced
lw a5, 0(a5) # Replaced
	xor	a5,a4,a5
	sw	a5,-52(s0)
la a5, SIGMA1_temp1 # Replaced
	lw	a4,4(a5)
la a5, SIGMA1_temp4 # Replaced
	lw	a5,4(a5)
	xor	a5,a4,a5
	sw	a5,-48(s0)
	lw	a5,-784(s0)
	sw	a5,-56(s0)
	lw	a4,-56(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	sw	a5,-56(s0)
	lw	a4,-788(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	lw	a3,-56(s0)
	lw	a4,-784(s0)
	sltu	a4,a3,a4
	andi	a4,a4,0xff
	add	a5,a5,a4
	sw	a5,-60(s0)
	lw	a4,-764(s0)
	lw	a5,-772(s0)
	and	a4,a4,a5
la a5, Ch_temp1 # Replaced
sw a4, 0(a5) # Replaced
	lw	a4,-760(s0)
	lw	a5,-768(s0)
	and	a4,a4,a5
la a5, Ch_temp1 # Replaced
	sw	a4,4(a5)
	lw	a5,-764(s0)
	not	a4,a5
la a5, Ch_temp2 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-760(s0)
	not	a4,a5
la a5, Ch_temp2 # Replaced
	sw	a4,4(a5)
la a5, Ch_temp2 # Replaced
lw a4, 0(a5) # Replaced
	lw	a5,-780(s0)
	and	a4,a4,a5
la a5, Ch_temp3 # Replaced
sw a4, 0(a5) # Replaced
la a5, Ch_temp2 # Replaced
	lw	a4,4(a5)
	lw	a5,-776(s0)
	and	a4,a4,a5
la a5, Ch_temp3 # Replaced
	sw	a4,4(a5)
la a5, Ch_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, Ch_temp3 # Replaced
lw a5, 0(a5) # Replaced
	xor	a5,a4,a5
	sw	a5,-68(s0)
la a5, Ch_temp1 # Replaced
	lw	a4,4(a5)
la a5, Ch_temp3 # Replaced
	lw	a5,4(a5)
	xor	a5,a4,a5
	sw	a5,-64(s0)
	lw	a5,-56(s0)
	sw	a5,-72(s0)
	lw	a4,-72(s0)
	lw	a5,-64(s0)
	add	a5,a4,a5
	sw	a5,-72(s0)
	lw	a4,-60(s0)
	lw	a5,-68(s0)
	add	a5,a4,a5
	lw	a3,-72(s0)
	lw	a4,-56(s0)
	sltu	a4,a3,a4
	andi	a4,a4,0xff
	add	a5,a5,a4
	sw	a5,-76(s0)
	lw	a5,-24(s0)
	slli	a4,a5,2
la a5, K.1672 # Replaced
	add	a5,a4,a5
	addi	a5,a5,4
	lw	a5,0(a5)
	sw	a5,-80(s0)
	lw	a4,-80(s0)
	addi	a3,s0,-724
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	addi	a5,a5,4
	lw	a5,0(a5)
	add	a5,a4,a5
	sw	a5,-80(s0)
#	lui	a5,%hi(K.1672)
	lw	a4,-24(s0)
	slli	a4,a4,2
#	addi	a5,a5,%lo(K.1672)
	
	la a5, K.1672
	
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a3,s0,-16
	add	a5,a3,a5
	lw	a5,-708(a5)
	add	a5,a4,a5
	lw	a3,-80(s0)
	lw	a4,-24(s0)
	slli	a2,a4,2
la a4, K.1672 # Replaced
	add	a4,a2,a4
	addi	a4,a4,4
	lw	a4,0(a4)
	sltu	a4,a3,a4
	andi	a4,a4,0xff
	add	a5,a5,a4
	sw	a5,-84(s0)
	lw	a5,-72(s0)
	sw	a5,-48(s0)
	lw	a4,-48(s0)
	lw	a5,-80(s0)
	add	a5,a4,a5
	sw	a5,-48(s0)
	lw	a4,-76(s0)
	lw	a5,-84(s0)
	add	a5,a4,a5
	lw	a3,-48(s0)
	lw	a4,-72(s0)
	sltu	a4,a3,a4
	andi	a4,a4,0xff
	add	a5,a5,a4
	sw	a5,-52(s0)
	lw	a5,-732(s0)
	srli	a4,a5,28
la a5, ROTR_temp1 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-732(s0)
	slli	a4,a5,4
	lw	a5,-728(s0)
	srli	a5,a5,28
	or	a4,a4,a5
la a5, ROTR_temp1 # Replaced
	sw	a4,4(a5)
	lw	a5,-728(s0)
	slli	a4,a5,4
la a5, ROTR_temp2 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
	sw	zero,4(a5)
la a5, ROTR_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
lw a5, 0(a5) # Replaced
	or	a4,a4,a5
la a5, SIGMA0_temp1 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp1 # Replaced
	lw	a4,4(a5)
la a5, ROTR_temp2 # Replaced
	lw	a5,4(a5)
	or	a4,a4,a5
la a5, SIGMA0_temp1 # Replaced
	sw	a4,4(a5)
la a5, ROTR_temp1 # Replaced
sw zero, 0(a5) # Replaced
	lw	a5,-732(s0)
	srli	a4,a5,2
la a5, ROTR_temp1 # Replaced
	sw	a4,4(a5)
	lw	a5,-732(s0)
	slli	a4,a5,30
	lw	a5,-728(s0)
	srli	a5,a5,2
	or	a4,a4,a5
la a5, ROTR_temp2 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-728(s0)
	slli	a4,a5,30
la a5, ROTR_temp2 # Replaced
	sw	a4,4(a5)
la a5, ROTR_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
lw a5, 0(a5) # Replaced
	or	a4,a4,a5
la a5, SIGMA0_temp2 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp1 # Replaced
	lw	a4,4(a5)
la a5, ROTR_temp2 # Replaced
	lw	a5,4(a5)
	or	a4,a4,a5
la a5, SIGMA0_temp2 # Replaced
	sw	a4,4(a5)
la a5, ROTR_temp1 # Replaced
sw zero, 0(a5) # Replaced
	lw	a5,-732(s0)
	srli	a4,a5,7
la a5, ROTR_temp1 # Replaced
	sw	a4,4(a5)
	lw	a5,-732(s0)
	slli	a4,a5,25
	lw	a5,-728(s0)
	srli	a5,a5,7
	or	a4,a4,a5
la a5, ROTR_temp2 # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-728(s0)
	slli	a4,a5,25
la a5, ROTR_temp2 # Replaced
	sw	a4,4(a5)
la a5, ROTR_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, ROTR_temp2 # Replaced
lw a5, 0(a5) # Replaced
	or	a4,a4,a5
la a5, SIGMA0_temp3 # Replaced
sw a4, 0(a5) # Replaced
la a5, ROTR_temp1 # Replaced
	lw	a4,4(a5)
la a5, ROTR_temp2 # Replaced
	lw	a5,4(a5)
	or	a4,a4,a5
la a5, SIGMA0_temp3 # Replaced
	sw	a4,4(a5)
la a5, SIGMA0_temp2 # Replaced
lw a4, 0(a5) # Replaced
la a5, SIGMA0_temp3 # Replaced
lw a5, 0(a5) # Replaced
	xor	a4,a4,a5
la a5, SIGMA0_temp4 # Replaced
sw a4, 0(a5) # Replaced
la a5, SIGMA0_temp2 # Replaced
	lw	a4,4(a5)
la a5, SIGMA0_temp3 # Replaced
	lw	a5,4(a5)
	xor	a4,a4,a5
la a5, SIGMA0_temp4 # Replaced
	sw	a4,4(a5)
la a5, SIGMA0_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, SIGMA0_temp4 # Replaced
lw a5, 0(a5) # Replaced
	xor	a5,a4,a5
	sw	a5,-68(s0)
la a5, SIGMA0_temp1 # Replaced
	lw	a4,4(a5)
la a5, SIGMA0_temp4 # Replaced
	lw	a5,4(a5)
	xor	a5,a4,a5
	sw	a5,-64(s0)
	lw	a4,-732(s0)
	lw	a5,-740(s0)
	and	a4,a4,a5
la a5, Maj_temp1 # Replaced
sw a4, 0(a5) # Replaced
	lw	a4,-728(s0)
	lw	a5,-736(s0)
	and	a4,a4,a5
la a5, Maj_temp1 # Replaced
	sw	a4,4(a5)
	lw	a4,-732(s0)
	lw	a5,-748(s0)
	and	a4,a4,a5
la a5, Maj_temp2 # Replaced
sw a4, 0(a5) # Replaced
	lw	a4,-728(s0)
	lw	a5,-744(s0)
	and	a4,a4,a5
la a5, Maj_temp2 # Replaced
	sw	a4,4(a5)
	lw	a4,-740(s0)
	lw	a5,-748(s0)
	and	a4,a4,a5
la a5, Maj_temp3 # Replaced
sw a4, 0(a5) # Replaced
	lw	a4,-736(s0)
	lw	a5,-744(s0)
	and	a4,a4,a5
la a5, Maj_temp3 # Replaced
	sw	a4,4(a5)
la a5, Maj_temp2 # Replaced
lw a4, 0(a5) # Replaced
la a5, Maj_temp3 # Replaced
lw a5, 0(a5) # Replaced
	xor	a4,a4,a5
la a5, Maj_temp4 # Replaced
sw a4, 0(a5) # Replaced
la a5, Maj_temp2 # Replaced
	lw	a4,4(a5)
la a5, Maj_temp3 # Replaced
	lw	a5,4(a5)
	xor	a4,a4,a5
la a5, Maj_temp4 # Replaced
	sw	a4,4(a5)
la a5, Maj_temp1 # Replaced
lw a4, 0(a5) # Replaced
la a5, Maj_temp4 # Replaced
lw a5, 0(a5) # Replaced
	xor	a5,a4,a5
	sw	a5,-76(s0)
la a5, Maj_temp1 # Replaced
	lw	a4,4(a5)
la a5, Maj_temp4 # Replaced
	lw	a5,4(a5)
	xor	a5,a4,a5
	sw	a5,-72(s0)
	lw	a5,-64(s0)
	sw	a5,-56(s0)
	lw	a4,-56(s0)
	lw	a5,-72(s0)
	add	a5,a4,a5
	sw	a5,-56(s0)
	lw	a4,-68(s0)
	lw	a5,-76(s0)
	add	a5,a4,a5
	lw	a3,-56(s0)
	lw	a4,-64(s0)
	sltu	a4,a3,a4
	andi	a4,a4,0xff
	add	a5,a5,a4
	sw	a5,-60(s0)
	lw	a5,-780(s0)
	sw	a5,-788(s0)
	lw	a5,-776(s0)
	sw	a5,-784(s0)
	lw	a5,-772(s0)
	sw	a5,-780(s0)
	lw	a5,-768(s0)
	sw	a5,-776(s0)
	lw	a5,-764(s0)
	sw	a5,-772(s0)
	lw	a5,-760(s0)
	sw	a5,-768(s0)
	lw	a5,-752(s0)
	sw	a5,-760(s0)
	lw	a4,-760(s0)
	lw	a5,-48(s0)
	add	a5,a4,a5
	sw	a5,-760(s0)
	lw	a4,-756(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	lw	a3,-760(s0)
	lw	a4,-752(s0)
	sltu	a4,a3,a4
	andi	a4,a4,0xff
	add	a5,a5,a4
	sw	a5,-764(s0)
	lw	a5,-748(s0)
	sw	a5,-756(s0)
	lw	a5,-744(s0)
	sw	a5,-752(s0)
	lw	a5,-740(s0)
	sw	a5,-748(s0)
	lw	a5,-736(s0)
	sw	a5,-744(s0)
	lw	a5,-732(s0)
	sw	a5,-740(s0)
	lw	a5,-728(s0)
	sw	a5,-736(s0)
	lw	a5,-48(s0)
	sw	a5,-728(s0)
	lw	a4,-728(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	sw	a5,-728(s0)
	lw	a4,-52(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	lw	a3,-728(s0)
	lw	a4,-48(s0)
	sltu	a4,a3,a4
	andi	a4,a4,0xff
	add	a5,a5,a4
	sw	a5,-732(s0)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addi	a5,a5,2
	sw	a5,-24(s0)
.L38:
	lw	a4,-20(s0)
	li	a5,79
	ble	a4,a5,.L39
	lw	a5,-804(s0)
	addi	a5,a5,4
	lw	a4,0(a5)
la a5, ADDTO2_temp # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-804(s0)
	addi	a5,a5,4
	lw	a3,0(a5)
	lw	a4,-728(s0)
	lw	a5,-804(s0)
	addi	a5,a5,4
	add	a4,a3,a4
	sw	a4,0(a5)
	lw	a5,-804(s0)
	lw	a4,0(a5)
	lw	a5,-732(s0)
	lw	a3,-804(s0)
	addi	a3,a3,4
	lw	a2,0(a3)
la a3, ADDTO2_temp # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-804(s0)
	sw	a4,0(a5)
	lw	a5,-804(s0)
	addi	a5,a5,8
	addi	a5,a5,4
	lw	a4,0(a5)
la a5, ADDTO2_temp # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-804(s0)
	addi	a5,a5,8
	addi	a5,a5,4
	lw	a3,0(a5)
	lw	a4,-736(s0)
	lw	a5,-804(s0)
	addi	a5,a5,8
	addi	a5,a5,4
	add	a4,a3,a4
	sw	a4,0(a5)
	lw	a5,-804(s0)
	lw	a4,8(a5)
	lw	a5,-740(s0)
	lw	a3,-804(s0)
	addi	a3,a3,8
	addi	a3,a3,4
	lw	a2,0(a3)
la a3, ADDTO2_temp # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-804(s0)
	sw	a4,8(a5)
	lw	a5,-804(s0)
	addi	a5,a5,16
	addi	a5,a5,4
	lw	a4,0(a5)
la a5, ADDTO2_temp # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-804(s0)
	addi	a5,a5,16
	addi	a5,a5,4
	lw	a3,0(a5)
	lw	a4,-744(s0)
	lw	a5,-804(s0)
	addi	a5,a5,16
	addi	a5,a5,4
	add	a4,a3,a4
	sw	a4,0(a5)
	lw	a5,-804(s0)
	lw	a4,16(a5)
	lw	a5,-748(s0)
	lw	a3,-804(s0)
	addi	a3,a3,16
	addi	a3,a3,4
	lw	a2,0(a3)
la a3, ADDTO2_temp # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-804(s0)
	sw	a4,16(a5)
	lw	a5,-804(s0)
	addi	a5,a5,24
	addi	a5,a5,4
	lw	a4,0(a5)
la a5, ADDTO2_temp # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-804(s0)
	addi	a5,a5,24
	addi	a5,a5,4
	lw	a3,0(a5)
	lw	a4,-752(s0)
	lw	a5,-804(s0)
	addi	a5,a5,24
	addi	a5,a5,4
	add	a4,a3,a4
	sw	a4,0(a5)
	lw	a5,-804(s0)
	lw	a4,24(a5)
	lw	a5,-756(s0)
	lw	a3,-804(s0)
	addi	a3,a3,24
	addi	a3,a3,4
	lw	a2,0(a3)
la a3, ADDTO2_temp # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-804(s0)
	sw	a4,24(a5)
	lw	a5,-804(s0)
	addi	a5,a5,32
	addi	a5,a5,4
	lw	a4,0(a5)
la a5, ADDTO2_temp # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-804(s0)
	addi	a5,a5,32
	addi	a5,a5,4
	lw	a3,0(a5)
	lw	a4,-760(s0)
	lw	a5,-804(s0)
	addi	a5,a5,32
	addi	a5,a5,4
	add	a4,a3,a4
	sw	a4,0(a5)
	lw	a5,-804(s0)
	lw	a4,32(a5)
	lw	a5,-764(s0)
	lw	a3,-804(s0)
	addi	a3,a3,32
	addi	a3,a3,4
	lw	a2,0(a3)
la a3, ADDTO2_temp # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-804(s0)
	sw	a4,32(a5)
	lw	a5,-804(s0)
	addi	a5,a5,40
	addi	a5,a5,4
	lw	a4,0(a5)
la a5, ADDTO2_temp # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-804(s0)
	addi	a5,a5,40
	addi	a5,a5,4
	lw	a3,0(a5)
	lw	a4,-768(s0)
	lw	a5,-804(s0)
	addi	a5,a5,40
	addi	a5,a5,4
	add	a4,a3,a4
	sw	a4,0(a5)
	lw	a5,-804(s0)
	lw	a4,40(a5)
	lw	a5,-772(s0)
	lw	a3,-804(s0)
	addi	a3,a3,40
	addi	a3,a3,4
	lw	a2,0(a3)
la a3, ADDTO2_temp # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-804(s0)
	sw	a4,40(a5)
	lw	a5,-804(s0)
	addi	a5,a5,48
	addi	a5,a5,4
	lw	a4,0(a5)
la a5, ADDTO2_temp # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-804(s0)
	addi	a5,a5,48
	addi	a5,a5,4
	lw	a3,0(a5)
	lw	a4,-776(s0)
	lw	a5,-804(s0)
	addi	a5,a5,48
	addi	a5,a5,4
	add	a4,a3,a4
	sw	a4,0(a5)
	lw	a5,-804(s0)
	lw	a4,48(a5)
	lw	a5,-780(s0)
	lw	a3,-804(s0)
	addi	a3,a3,48
	addi	a3,a3,4
	lw	a2,0(a3)
la a3, ADDTO2_temp # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-804(s0)
	sw	a4,48(a5)
	lw	a5,-804(s0)
	addi	a5,a5,56
	addi	a5,a5,4
	lw	a4,0(a5)
la a5, ADDTO2_temp # Replaced
sw a4, 0(a5) # Replaced
	lw	a5,-804(s0)
	addi	a5,a5,56
	addi	a5,a5,4
	lw	a3,0(a5)
	lw	a4,-784(s0)
	lw	a5,-804(s0)
	addi	a5,a5,56
	addi	a5,a5,4
	add	a4,a3,a4
	sw	a4,0(a5)
	lw	a5,-804(s0)
	lw	a4,56(a5)
	lw	a5,-788(s0)
	lw	a3,-804(s0)
	addi	a3,a3,56
	addi	a3,a3,4
	lw	a2,0(a3)
la a3, ADDTO2_temp # Replaced
lw a3, 0(a3) # Replaced
	sltu	a3,a2,a3
	andi	a3,a3,0xff
	add	a5,a5,a3
	add	a4,a4,a5
	lw	a5,-804(s0)
	sw	a4,56(a5)
	lw	a5,-804(s0)
	sh	zero,80(a5)
	nop
	lw	s0,812(sp)
	addi	sp,sp,816
	jr	ra, 0
	.size	SHA384_512ProcessMessageBlock, .-SHA384_512ProcessMessageBlock
#	.align	2
#	.type	SHA384_512Finalize, @function
SHA384_512Finalize:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	lbu	a5,-37(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	SHA384_512PadMessage
	sh	zero,-18(s0)
	j	.L41
.L42:
	lh	a5,-18(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	sb	zero,82(a5)
	lhu	a5,-18(s0)
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-18(s0)
.L41:
	lh	a4,-18(s0)
	li	a5,127
	ble	a4,a5,.L42
	lw	a5,-36(s0)
	sw	zero,68(a5)
	lw	a5,-36(s0)
	lw	a4,68(a5)
	lw	a5,-36(s0)
	sw	a4,64(a5)
	lw	a5,-36(s0)
	sw	zero,76(a5)
	lw	a5,-36(s0)
	lw	a4,76(a5)
	lw	a5,-36(s0)
	sw	a4,72(a5)
	lw	a5,-36(s0)
	li	a4,1
	sw	a4,212(a5)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra, 0
	.size	SHA384_512Finalize, .-SHA384_512Finalize
#	.align	2
#	.type	SHA384_512PadMessage, @function
SHA384_512PadMessage:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	mv	a5,a1
	sb	a5,-21(s0)
	lw	a5,-20(s0)
	lh	a4,80(a5)
	li	a5,111
	ble	a4,a5,.L44
	lw	a5,-20(s0)
	lh	a3,80(a5)
	slli	a5,a3,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,80(a5)
	mv	a4,a3
	lw	a5,-20(s0)
	add	a5,a5,a4
	lbu	a4,-21(s0)
	sb	a4,82(a5)
	j	.L45
.L46:
	lw	a5,-20(s0)
	lh	a3,80(a5)
	slli	a5,a3,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,80(a5)
	mv	a4,a3
	lw	a5,-20(s0)
	add	a5,a5,a4
	sb	zero,82(a5)
.L45:
	lw	a5,-20(s0)
	lh	a4,80(a5)
	li	a5,127
	ble	a4,a5,.L46
	lw	a0,-20(s0)
	call	SHA384_512ProcessMessageBlock
	j	.L48
.L44:
	lw	a5,-20(s0)
	lh	a3,80(a5)
	slli	a5,a3,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,80(a5)
	mv	a4,a3
	lw	a5,-20(s0)
	add	a5,a5,a4
	lbu	a4,-21(s0)
	sb	a4,82(a5)
	j	.L48
.L49:
	lw	a5,-20(s0)
	lh	a3,80(a5)
	slli	a5,a3,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-20(s0)
	sh	a4,80(a5)
	mv	a4,a3
	lw	a5,-20(s0)
	add	a5,a5,a4
	sb	zero,82(a5)
.L48:
	lw	a5,-20(s0)
	lh	a4,80(a5)
	li	a5,111
	ble	a4,a5,.L49
	lw	a5,-20(s0)
	lw	a5,64(a5)
	srli	a5,a5,24
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,194(a5)
	lw	a5,-20(s0)
	lw	a5,64(a5)
	srli	a5,a5,16
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,195(a5)
	lw	a5,-20(s0)
	lw	a5,64(a5)
	srli	a5,a5,8
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,196(a5)
	lw	a5,-20(s0)
	lw	a5,64(a5)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,197(a5)
	lw	a5,-20(s0)
	lw	a5,68(a5)
	srli	a5,a5,24
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,198(a5)
	lw	a5,-20(s0)
	lw	a5,68(a5)
	srli	a5,a5,16
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,199(a5)
	lw	a5,-20(s0)
	lw	a5,68(a5)
	srli	a5,a5,8
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,200(a5)
	lw	a5,-20(s0)
	lw	a5,68(a5)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,201(a5)
	lw	a5,-20(s0)
	lw	a5,72(a5)
	srli	a5,a5,24
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,202(a5)
	lw	a5,-20(s0)
	lw	a5,72(a5)
	srli	a5,a5,16
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,203(a5)
	lw	a5,-20(s0)
	lw	a5,72(a5)
	srli	a5,a5,8
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,204(a5)
	lw	a5,-20(s0)
	lw	a5,72(a5)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,205(a5)
	lw	a5,-20(s0)
	lw	a5,76(a5)
	srli	a5,a5,24
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,206(a5)
	lw	a5,-20(s0)
	lw	a5,76(a5)
	srli	a5,a5,16
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,207(a5)
	lw	a5,-20(s0)
	lw	a5,76(a5)
	srli	a5,a5,8
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,208(a5)
	lw	a5,-20(s0)
	lw	a5,76(a5)
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,209(a5)
	lw	a0,-20(s0)
	call	SHA384_512ProcessMessageBlock
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra, 0
	.size	SHA384_512PadMessage, .-SHA384_512PadMessage
#	.align	2
#	.type	SHA384_512ResultN, @function
SHA384_512ResultN:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	bnez	a5,.L51
	li	a5,1
	j	.L52
.L51:
	lw	a5,-40(s0)
	bnez	a5,.L53
	li	a5,1
	j	.L52
.L53:
	lw	a5,-36(s0)
	lw	a5,216(a5)
	beqz	a5,.L54
	lw	a5,-36(s0)
	lw	a5,216(a5)
	j	.L52
.L54:
	lw	a5,-36(s0)
	lw	a5,212(a5)
	bnez	a5,.L55
	li	a1,128
	lw	a0,-36(s0)
	call	SHA384_512Finalize
.L55:
	sw	zero,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	j	.L56
.L57:
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	srli	a3,a5,24
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	add	a5,a5,a4
	andi	a4,a3,0xff
	sb	a4,0(a5)
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	srli	a3,a5,16
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	add	a5,a5,a4
	andi	a4,a3,0xff
	sb	a4,0(a5)
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	srli	a3,a5,8
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	add	a5,a5,a4
	andi	a4,a3,0xff
	sb	a4,0(a5)
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	lw	a4,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	add	a5,a5,a4
	andi	a4,a3,0xff
	sb	a4,0(a5)
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	srli	a3,a5,24
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	add	a5,a5,a4
	andi	a4,a3,0xff
	sb	a4,0(a5)
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	srli	a3,a5,16
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	add	a5,a5,a4
	andi	a4,a3,0xff
	sb	a4,0(a5)
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	srli	a3,a5,8
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	add	a5,a5,a4
	andi	a4,a3,0xff
	sb	a4,0(a5)
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	lw	a4,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	add	a5,a5,a4
	andi	a4,a3,0xff
	sb	a4,0(a5)
.L56:
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L57
	li	a5,0
.L52:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra, 0
	.size	SHA384_512ResultN, .-SHA384_512ResultN
	.section	.rodata
#	.align	2
#.LC0:
#	.string	"abc"
#	.text
#	.align	2
	.globl	main
#	.type	main, @function
main:
	addi	sp,sp,-336
	sw	ra,332(sp)
	sw	s0,328(sp)
	addi	s0,sp,336
	sw	a0,-324(s0)
	sw	a1,-328(s0)
la a5, .LC0 # Replaced
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	j	.L59
.L60:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L59:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bnez	a5,.L60
	addi	a5,s0,-244
	mv	a0,a5
	call	SHA512Reset
	addi	a5,s0,-244
	lw	a2,-20(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	SHA512Input
	addi	a4,s0,-308
	addi	a5,s0,-244
	mv	a1,a4
	mv	a0,a5
	call	SHA512Result
	li	a5,0
	mv	a0,a5
	lw	ra,332(sp)
	lw	s0,328(sp)
	addi	sp,sp,336
#	jr	ra, 0
	.size	main, .-main
	.section	.sdata,"aw"
#	.align	2
#	.type	masks.1655, @object
	.size	masks.1655, 8

