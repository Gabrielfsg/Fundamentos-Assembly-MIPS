.data

	num1: .word 10
	num2: .word 6
	msgIgual: .asciiz "Os números são iguais."
	msgdif: .asciiz "Os números são diferentes."
	
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
