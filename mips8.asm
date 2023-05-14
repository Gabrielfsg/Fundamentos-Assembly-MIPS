.data

	array:
		.align 2
		.space 16


.text

	move $t0, $zero
	move $t1, $zero
	li $t2,  16
	
	loop:
		beq $t0,$t2,exit
		sw $t1, array($t0)
		addi $t0, $t0, 4
		addi $t1, $t1, 1
				
		j loop
	
	
	
	exit:
		move $t0, $zero
		imprime:
			beq $t0,$t2,saiImprime
			li $v0, 1
			lw $a0, array($t0)
			syscall
			addi $t0, $t0, 4
			j imprime		
		saiImprime:
			li $v0, 10
			syscall 
