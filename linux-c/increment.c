#include <stdio.h>

int increment(int x){
	return x = x + 1;
}

int main(void){
	int i=1, j=2;
	i = increment(i);
	j = increment(j);
	printf("i:%d\nj:%d\n", i, j);
	return 0;
}
