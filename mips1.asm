.data
	#data �rea para dados
	#msg: .asciiz "Ol� mundo!" #msg a ser exibida ao usuario
	#caracter: .byte 'A'
	idade: .word 50 

.text
	#text �rea para instru��es
	
	
	#li $v0, 4 #instru��o basica para impress�o de string
	#la $a0, msg #indica endere�o de memoria da msg
	#syscall #fa�a! imprima
	
	#li $v0, 4 #instru��o basica para impress�o de string
	#la $a0, caracter #indica endere�o de memoria da msg
	#syscall #fa�a! imprima
	
	li $v0, 1 #instru��o basica para exibir de int
	lw $a0, idade #indica endere�o de memoria da msg
	syscall #fa�a! imprima
	
	li $v0, 10
	syscall
	
	
	
	
	
