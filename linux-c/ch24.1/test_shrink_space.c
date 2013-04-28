#include <stdio.h>
#include "shrink_space.h"

char *str = "ab cd  efg\nhijk		lm	   \r \n n";

int main(void)
{
	char dest[20];
	printf("%s\n", shrink_space(dest, str, 3));
	printf("%s\n", shrink_space(dest, str, 4));
	printf("%s\n", shrink_space(dest, str, 6));
	printf("%s\n", shrink_space(dest, str, 7));
	printf("%s\n", shrink_space(dest, str, 8));
	return 0;
}
