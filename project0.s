# PROGRAM: Hello, World!
 .data
 out_string: .asciiz "\nHello, World!\n"
 .text
main: # changing this line to main2 prints "HEllo World!"
# main10 does not run. let's mess with $t1? i'm feeling adventurous tonight. 
 li $v0, 4
 la $a0, out_string
 syscall
 lb $t2, 2($a0)
 addi $t1, $t1, -32
 sb $t1, 2($a0)
 syscall
 li $v0, 10
 syscall
