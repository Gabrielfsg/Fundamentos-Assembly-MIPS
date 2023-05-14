.data 

	entrada: .asciiz "Digite o número: "
	igualmsg: .asciiz "Igual a 0"
	maiormsg: .asciiz "Maior que 0"
	menormsg: .asciiz "Menor que 0"

.text 

	li $v0, 4
	la $a0, entrada
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	
	beq $t0, $zero, igual
	blt $t0, $zero, menor
	bgt $t0, $zero, maior
	
	li $v0, 10
	syscall
	
	igual:
		li $v0, 4
		la $a0, igualmsg
		syscall
		
		li $v0, 10
		syscall	
	
	menor:
		li $v0, 4
		la $a0, menormsg
		syscall
		
		li $v0, 10
		syscall
		
	maior:
		li $v0, 4
		la $a0, maiormsg
		syscall
		
		li $v0, 10
		syscall
	
	