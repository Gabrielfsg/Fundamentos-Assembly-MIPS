.data

	num1: .word 10
	num2: .word 65

.text

	lw $t0, num1
	lw $t1, num2
	add $t2, $t0, $t1
	li $v0, 1
	move $a0, $t2
	syscall #fa�a! imprima
	
	li $v0, 10
	syscall