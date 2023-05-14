.data 

	msgNum1: .asciiz "Numero 1: "
	msgNum2: .asciiz "Numero 2: "
	iguais: .asciiz "Iguais"
	diferentes: .asciiz "Diferentes"

.text 

	li $v0, 4
	la $a0, msgNum1
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, msgNum2
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	beq $t1, $t0, igual
	
	li $v0, 4
	la $a0, diferentes
	syscall
	
	
	li $v0, 10
	syscall
	
	igual:
		li $v0, 4
		la $a0, iguais
		syscall
		
		li $v0, 10
		syscall