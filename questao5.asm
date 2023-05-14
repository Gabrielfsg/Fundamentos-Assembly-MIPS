 
.data

	num1: .word 10
	num2: .word 6
	
.text
	
	lw $t0, num1
	lw $t1, num2
	
	mult  $t1, $t0
	
	mflo $t3
	
	move $a0, $t3
	
	li $v0, 1
	syscall 
	
	
	li $v0, 10
	syscall 
