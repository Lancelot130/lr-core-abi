    .text
    .globl set_ctx

set_ctx:
    movq %rbp, 0(%rdi)
    movq %rbx, 8(%rdi)
    movq %r12, 16(%rdi)
    movq %r13, 24(%rdi)
    movq %r14, 32(%rdi)
    movq %r15, 40(%rdi)
    movq (%rsp), %rax
    movq %rax, 48(%rdi)
    leaq 8(%rsp), %rax
    movq %rax, 56(%rdi)
    xorq %rax, %rax
    ret

    .globl jmp_to
jmp_to:
    movq 0(%rdi), %rbp
    movq 8(%rdi), %rbx
    movq 16(%rdi), %r12
    movq 24(%rdi), %r13
    movq 32(%rdi), %r14
    movq 40(%rdi), %r15
    movq 48(%rdi), %rdx
    movq 56(%rdi), %rsp
    cmpl $0, %esi
    je .Lzero
    movl %esi, %eax
    jmp *%rdx
.Lzero:
    movl $1, %eax
    jmp *%rdx
