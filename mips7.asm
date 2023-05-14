.data

	entrada: .asciiz "Digite o número: " 

.text

	move $t0, $zero

	li $v0, 4
	la $a0, entrada
	syscall
	
	li $v0, 5
	syscall
	
	addi $t1, $v0, 1
	
	loop:
	
	beq $t0, $t1, saida	
	move $a0, $t0
	addi $t0, $t0, 1
	
	li $v0, 1
	syscall
	
	j loop
	
		 
	saida:
		li $v0, 10
		syscall	 
