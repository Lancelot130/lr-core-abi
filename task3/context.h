/* 要求：完整保存程序执行所需上下文；切回后调用者应能继续往下执行。 */
typedef struct {
    unsigned long rbp;
    unsigned long rbx;
    unsigned long r12;
    unsigned long r13;
    unsigned long r14;
    unsigned long r15;
    unsigned long set_addr;
    unsigned long rsp;
} context_t;
