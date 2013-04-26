#include <stdio.h>

int main(void)
{
	int a[10] = {1,2,3,4};
	int *pa = &a[0];
	pa++;
	
	/*if(&a == &a[0])
		printf("&a == &a[0]");
	else
		printf("&a != &a[0]");*/
	//putchar(*&a);
	
	return 0;
}
