#include <stdio.h>
#include <stdlib.h>
#define N 100000

int a[N];

int main(void){
	int i;
	int bound = 10;
	int histogram[10] = {0};
	
	for(i=0;i<N;i++){
		histogram[a[i] = rand()%bound]++;
	}

	for (i=0;i<bound;i++){
		printf("%d\t%d\n", i, histogram[i]);
	}
	return 0;
}
