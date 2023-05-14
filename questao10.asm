    .data
    quebraLinha: .asciiz "\n"
    
    .text
    .globl main
    
main:
    li $t0, 0          
    
loop:
    addi $t0, $t0, 2              
    
    move $a0, $t0      
    li $v0, 1          
    syscall            
    
    li $v0, 4          
    la $a0, quebraLinha    
    syscall            
    
    slti $t1, $t0, 8  
    bne $t1, $zero, loop 
    
    li $v0, 10         
    syscall            
