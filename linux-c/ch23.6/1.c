#include <stdio.h>

int i = 0;
int *pi = &i;
int **ppi = &pi;

int main(void)
{
	printf("i:%d\n", i);
	printf("*pi:%d\n", *pi);
	printf("**ppi:%d\n", **ppi);
	return 0;
}
