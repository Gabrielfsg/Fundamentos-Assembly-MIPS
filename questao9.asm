.data

	num1: .word 10
	num2: .word 6
	msgIgual: .asciiz "Os n�meros s�o iguais."
	msgdif: .asciiz "Os n�meros s�o diferentes."
	
.text
	
	 main:
		lw $t0, num1
		lw $t1, num2
		
		beq $t0, $t1, igual
		j diferente
	
	igual:
	
		li $v0, 4
		la $a0, msgIgual
		syscall
		
		li $v0, 10
		syscall
	
	
	diferente: 
	
		li $v0, 4
		la $a0, msgdif
		syscall
		
		li $v0, 10
		syscall
