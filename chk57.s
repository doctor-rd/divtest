.global chk57

chk57:
	movs	r1, r0
	rsbmi	r1, r1, #0
	ldr	r2, addr_of_data
chk_next:
	ldr	r0, [r2]
	muls	r0, r0, r1
	beq	chk_end
	add	r2, r2, #4
	ldr	r3, [r2]
	lsrs	r0, r0, r3
	bxeq	lr
	add	r2, r2, #4
	b	chk_next
chk_end:
	mov	r0, #1
	bx	lr

addr_of_data: .word data
data: .word 0xcccccccd, 29, 0xb6db6db7, 29, 0
