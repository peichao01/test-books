#include <stdio.h>
//int a[10];
//int (*pa)[10] = &a;

char a[4][4][2] = {{{'a','b'}, {'c', 'd'}, {'e', 'f'}, {'1', '2'}},
					{{'g', 'h'}, {'i', 'j'}, {'k', 'l'}, {'3', '4'}},
					{{'m', 'n'}, {'o', 'p'}, {'q', 'r'}, {'5', '6'}},
					{{'s', 't'}, {'u', 'v'}, {'w', 'x'}, {'7', '8'}}};


char (*pa)[2] = &a[1][0];
char (*ppa)[4][2] = &a[1];

int main(int argc, char *argv[])
{
	printf("how can i access charactor 'r' with '*pa' and '*ppa'?\n");
	printf("(*ppa+1)[2][1]:%c\n", (*ppa+1)[2][1]); // -> '4'
	printf("(*ppa+3)[2][1]:%c\n", (*ppa+3)[2][1]); // -> 'p'
	printf("(*ppa)[2][1]:%c\n", (*ppa)[2][1]); // -> 'l'
	return 0;
}
