.data

	msgN1: .asciiz "Entre com o numero 1: "
	msgN2: .asciiz "Entre com o numero 2: "
	soma: .asciiz "A soma é: "

.text

	li $v0, 4
	la $a0, msgN1
	syscall
	
	li $v0, 6
	syscall
	
	mov.s $f1, $f0
	
	li $v0, 4
	la $a0, msgN2
	syscall
	
	li $v0, 6
	syscall
	
	add.s $f12, $f1, $f0
	
	li $v0, 4
	la $a0, msgN1
	li $v0, 2
	syscall 
	
	li $v0, 10
	syscall
	