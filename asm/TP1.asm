# File asm/tp1.asm "Test Program 1 (TP1)"
# Must include all arithmetic and logical
# operations to be considered an approved test


.global	_main

_main:
	addi x1, x0, 3
	addi x2, x0, 2
	add  x3, x1, x2
	sub  x4, x1, x2
	and  x5, x4, x2
	andi x5, x5, 5
	addi x6, x0, -3
	slt  x7, x6, x1
	sltu x8, x6, x1
	addi x9, x0, 2
	sll  x10, x9, x4
	addi x11, x0, -8
	sra  x12, x11, x4
	add  x13, x12, x0
