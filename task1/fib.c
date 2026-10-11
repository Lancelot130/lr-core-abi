#include <stdio.h>

long long fib(int x)
{
    long long a = 0;
    long long b = 1;
    long long c;

    if (x <= 1) return x; 

    for (int i = 2;i <= x;i++)
    {
        c = a + b;
        a = b;
        b = c;
    }

    return c;
}