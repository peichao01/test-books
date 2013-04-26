#include <stdio.h>

int num = 10;
int num2 = 45;
int *a[10] = {&num, &num2};
//int **pa = &a[0];
int **pa = a;

int main(void)
{
	printf("*a[0]:%d\n", *a[0]);
	printf("*pa[1]:%d\n", *pa[1]);
	printf("(**pa+1):%d\n", (**pa+1));
	printf("**(pa+1):%d\n", **(pa+1));
	//printf("**ppi:%d\n", **ppi);
	return 0;
}
