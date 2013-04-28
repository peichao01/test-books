/* main.c */
#include <stdio.h>
#include "redirect_ptr.h"

int main(void)
{
	char *firstday = NULL;
	char *secondday = NULL;
	firstday = get_a_day(firstday);
	secondday = get_a_day(secondday);
	printf("%s\t%s\n", firstday, secondday);
	return 0;
}
