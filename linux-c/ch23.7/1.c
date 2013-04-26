#include <stdio.h>
//int a[10];
//int (*pa)[10] = &a;

char a[4][3][2] = {{{'a','b'}, {'c', 'd'}, {'e', 'f'}},
					{{'g', 'h'}, {'i', 'j'}, {'k', 'l'}},
					{{'m', 'n'}, {'o', 'p'}, {'q', 'r'}},
					{{'s', 't'}, {'u', 'v'}, {'w', 'x'}}};

char (*pa)[2] = &a[1][0];
char (*ppa)[3][2] = &a[1];

int main(int argc, char *argv[])
{
	printf("how can i access charactor 'r' with '*pa' and '*ppa'?\n");
	printf("(*ppa+1)[2][1]:%c\n", (*ppa+1)[2][1]); // -> 'n'
	printf("(*ppa+3)[2][1]:%c\n", (*ppa+3)[2][1]); // -> 'r'
	printf("(*ppa)[2][1]:%c\n", (*ppa)[2][1]); // -> 'l'
	return 0;
}
