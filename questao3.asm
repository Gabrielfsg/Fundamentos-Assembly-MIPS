.data

	numDouble: .double 7.809
	
.text
	
	l.d $f12, numDouble
	li $v0, 3
	syscall
	
	li $v0, 10
	syscall
