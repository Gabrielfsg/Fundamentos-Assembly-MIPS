.data
	
	msgIdade: .asciiz "Entre com a idade: "
	msg: .asciiz "Sua idade atual é: "
	
.text

	li $v0, 4
	la $a0, msgIdade
	syscall
	
	li $v0, 5
	syscall 
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, msg
	syscall
	
	move $a0, $t0
	
	li $v0, 1
	syscall 
	
	
	li $v0, 10
	syscall 
