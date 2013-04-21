#include <stdio.h>
#include <stdlib.h>
#define N 100000

int a[N];

void gen_random(int upper_bound){
	int i;
	for (i=0;i<N;i++){
		a[i] = rand()%upper_bound;
	}
}

int howmany(int value){
	int count=0, i;
	for (i=0; i<N;i++){
		if(a[i]==value){
			++count;
		}
	}
	return count;
}

void print_random(){
	int i;
	for(i=0;i<N;i++){
		printf("%d ", a[i]);
	}
	printf("\n");
}

int main(void){
	int i, bound = 10;

	gen_random(bound);
	//print_random();
	for (i=0;i<bound;i++){
		printf("%d\t%d\n", i, howmany(i));
	}
	return 0;
}
