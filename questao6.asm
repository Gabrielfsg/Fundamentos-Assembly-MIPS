.data

	num1: .word 5120
	num2: .word 1024
	
.text
	
	lw $t0, num1
	lw $t1, num2
	
	div  $t0, $t1
	
	mflo $t3
	
	move $a0, $t3
	
	li $v0, 1
	syscall 
	
	
	li $v0, 10
	syscall 
