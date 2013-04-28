#include <stdio.h>
#include <string.h>
#include "sizeof_str.h"


int main(void)
{
	int i;
	const char *str_src = "Hello world";
	unsigned long int size = sizeof_str(str_src);//sizeof(str_src);
	char str_dest[size];

	printf("size:%ld\n", size);
	printf("%s\n", strncpy(str_dest, str_src, size));

	for(i=0;i<size+1;i++){
		printf("%d %c\n", str_dest[i] == '\0',str_dest[i]);
	}
	putchar('\n');
	
	return 0;
}
