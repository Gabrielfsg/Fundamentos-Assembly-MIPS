.data
	#data área para dados
	#msg: .asciiz "Olá mundo!" #msg a ser exibida ao usuario
	#caracter: .byte 'A'
	idade: .word 50 

.text
	#text área para instruções
	
	
	#li $v0, 4 #instrução basica para impressão de string
	#la $a0, msg #indica endereço de memoria da msg
	#syscall #faça! imprima
	
	#li $v0, 4 #instrução basica para impressão de string
	#la $a0, caracter #indica endereço de memoria da msg
	#syscall #faça! imprima
	
	li $v0, 1 #instrução basica para exibir de int
	lw $a0, idade #indica endereço de memoria da msg
	syscall #faça! imprima
	
	li $v0, 10
	syscall
	
	
	
	
	
