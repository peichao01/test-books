#include <stdio.h>

struct unit {
	char c;
	int num;
};
struct unit u = {c:'c', num:10};
struct unit *p = &u;

int main(void)
{
	printf("u.c:%c\n", u.c);
	printf("(*p).c:%c\n", (*p).c);
	printf("p->c:%c\n", p->c);

	return 0;
}
