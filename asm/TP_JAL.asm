.global _main

.text

_main:
	jal x1, _function0

_function1:
	addi x4, x0, 5
	addi x5, x0, 7
	add  x4, x4, x5

_function0:
	addi x1, x0, 4
	addi x2, x0, 5
	add  x3, x1, x2
	jalr x10, x1, 0
