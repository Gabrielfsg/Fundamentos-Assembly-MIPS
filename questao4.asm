.data

	num1: .word 5
	num2: .word 8
	
.text
	
	lw $t0, num1
	lw $t1, num2
	
	add $t3, $t1, $t0
	move $a0, $t3
	
	li $v0, 1
	syscall 
	
	
	li $v0, 10
	syscall 
