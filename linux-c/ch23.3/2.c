#include <stdio.h>

int main(void)
{
	int a[10] = {0,1,2,3,4,5,6,7,8,9};
	int *pa = &a[0];
	/*
	printf("pa: %d\n", *pa);
	
	pa++;
	printf("pa: %d\n", *pa);
	
	pa += 4;
	printf("pa: %d\n", *pa);
	*/
	
	pa++;
	printf("pa[2]=>%d\n", pa[2]);
	printf("2[pa]=>%d\n", 2[pa]);
	printf("*(pa+2)=>%d\n", *(pa+2));
	printf("*(a+2)=>%d\n", *(a+2));
	
	printf("pa + 2 > pa => %d\n", pa + 2 > pa);
	printf("pa - 1 == a => %d\n", pa - 1 == a);

	return 0;
}
