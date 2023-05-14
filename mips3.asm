.data

	msgNota1: .asciiz "Entre com a nota 1: "
	msgNota2: .asciiz "Entre com a nota 2: "
	somaDasNotas: .asciiz "A media das notas é: "
	divi: .word 2

.text

	li $v0, 4
	la $a0, msgNota1
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, msgNota2
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	add $t2, $t0, $t1    

	lw $t3, divi         

	div $t2, $t3         

	mflo $t4    
	
	li $v0, 4
	la $a0, somaDasNotas
	syscall
	
	li $v0, 1
	move $a0, $t4
	syscall
	
	li $v0, 10
	syscall
	
	
	
	
	
	
	
	
