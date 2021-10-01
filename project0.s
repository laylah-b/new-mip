# PROGRAM: Hello, World!
 .data
 out_string: .asciiz "\nHello, World!\n"
 .text
main: # changing this line to main2 prints "HEllo World!"
# main10 does not run. let's mess with $t1? i'm feeling adventurous tonight. 
 li $v0, 4
 la $a0, out_string
 syscall
 lb $t1, 2($a0) # changed this $t1 to $t2, and there were no catastrophic error messages
 # yielded [Instruction references undefined symbol at 0x00400014]
 # just plain old refused to run, which was a little disappointing!
 # sometimes deep down you want your computer to implode, y'know?
 addi $t1, $t1, -32
 sb $t1, 2($a0)
 syscall
 li $v0, 10
 syscall
