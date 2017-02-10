main:
	mov	r1, #0x4000000
	mov	r2, #0x400
	add	r2, r2, #3
	str	r2, [r1, #0]	;set video mode
	mov	r0, #70 	;1st for counter
loop1:
	mov	r1, #110	;2nd for counter
	mov	r2, #0x6000000	;r2 = VRAM
	mov	r4, #240
	mla	r3, r4, r0, r1	;VRAM += (240 * y + x) * 2
	lsl	r3, r3, #1
	add	r2, r2, r3
	mov	r3, #0x001f	;r3 = color
loop2:
	strh	r3, [r2, #0]
	cmp	r1, #130
	add	r2, r2, #2
	add	r1, r1, #1
	bne	loop2
lend2:
	cmp	r0, #90
	add	r0, r0, #1
	bne	loop1
lend1:
	b	lend1
	