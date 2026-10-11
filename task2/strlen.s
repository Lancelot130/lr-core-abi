    .text
    .globl my_strlen

my_strlen:
    xorq %rax, %rax
.Lcount:
    cmpb $0,(%rdi, %rax)
    je .Ldone
    incq %rax
    jmp .Lcount
.Ldone:
    ret
