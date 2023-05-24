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


.data

	a: .word 0,1,2,3,4,5
	valor: .asciiz "O valor de a[i] é: "
	quebra: .asciiz "\n"


.text

	li $s0, 0
	la $s6, a

	loop:
	
		beq $s0, 6, sair
	
		sll $t0, $s0, 2
		add $t0, $t0, $s6
		lw $t1, 0($t0)
	
		li $v0, 4
		la $a0 valor
		syscall
		
		li $v0, 1
		move $a0, $t1
		syscall
		
		li $v0, 4
		la $a0 quebra
		syscall
		
		addi $s0, $s0, 1
		
		j loop
		
	sair:
	
		li $v0, 10
		syscall 
	
		
