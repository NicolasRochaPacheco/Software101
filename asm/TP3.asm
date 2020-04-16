.global _main

.text

# A Fibonacci sequence

# Main initializes registers
# X1: First Fibonacci operand
# X2: Second Fibonacci operand
# X3: A conunter
# X4: The sequence limit
# X5: Temporal register
_main:
	addi x1, x0, 1
	addi x2, x0, 1
	addi x4, x0, 5

_calc:
	beq x3, x4, _exit
	add x5, x1, x2
	add x1, x2, x0
	add x2, x5, x0
	addi x3, x3, 1
	beq x6, x6, _calc

_exit:
	add x0, x0, x0
