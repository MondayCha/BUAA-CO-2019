#include <stdio.h>

int hanoi(int n,char x,char y,char z)
{
    if(n==1)
        printf("move disk 1 from %c to %c\n",x,z);
    else
    {
        hanoi(n-1,x,z,y);
        printf("move disk %d from %c to %c\n",n,x,z);
        hanoi(n-1,y,x,z);
    }
    return 0;
}

int main()
{
    int n;
    scanf("%d",&n);
    hanoi(n,'A','B','C');
    return 0;
}

