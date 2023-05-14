.data

	inteiro: .word 26
	
.text
	
	lw $t0, inteiro
	move $a0, $t0
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
