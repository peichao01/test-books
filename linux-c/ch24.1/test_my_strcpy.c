#include <stdio.h>
#include "my_strcpy.h"

int main(void)
{
	char dest[20];
	printf("%s\n", my_strcpy(dest, "abcdefg higklmn"));

	return 0;
}
