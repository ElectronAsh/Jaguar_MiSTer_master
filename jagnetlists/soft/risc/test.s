	.include	"jaguar.inc"

	.68000
	.text

	.long
	.GPU
	.org     G_RAM
	movei	#$FFFFFFFF, r0
.toto:
	moveq	#1, r3
	nop
	;add		r1, r2
	;	moveq	#5, r2
	
	
	load	(r15+3), r8
	store	r8,(r14+8)
	
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
	
	add		r1, r0
	addc	r1, r1
	;move	r0, r0
;	nop
	cmpq	#11, r11
	cmpq	#12, r12
	addc	r8, r9
	addc	r2, r3
	moveq	#6, r6
	subq	#2, r7
	jr		.toto
;	jump	(r6)
	add		r4, r5
	
	nop
	nop
	
	.68000
