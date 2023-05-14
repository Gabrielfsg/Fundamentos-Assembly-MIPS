.data
	
.text

	main:
		addi $a0, $zero, 120
		addi $a1, $zero, 60
	 
		jal soma
	
		add $s0, $zero, $v0
		move $a0, $s0
		li $v0, 1
		syscall
	
	
		li $v0, 10
		syscall
	
	 soma: 
		add $v0, $a0, $a1
		jr $ra
