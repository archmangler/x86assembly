#          %eax holds the system call number
#          %ebx holds the return status
#
#steps for building and testing:
#  as exit.asm -o exit.o
#  ld exit.o -o exit
#  ./exit     
#  echo $?

 .section .data
 .section .text
 .globl _start

_start:
# this is the linux kernel command
# number (system call) for exiting
# a program
 movl $1, %eax
# this is the status number we will
# return to the operating system.
# Change this around and it will
# return different things to
# echo $?
 movl $1, %ebx

# this wakes up the kernel to run
# the exit command
 int $0x80
