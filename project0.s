# PROGRAM: Hello, World!
 .data
 out_string: .asciiz "\nHello, World!\n"
 .text
main: # changing this line to main2 prints "HEllo World!"
# what needs to be done to change it to all caps? main10 or main12?
# let's do that next!
 li $v0, 4
 la $a0, out_string
 syscall
 lb $t1, 2($a0)
 addi $t1, $t1, -32
 sb $t1, 2($a0)
 syscall
 li $v0, 10
 syscall
