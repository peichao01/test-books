#include <stdlib.h>

int main(void)
{
	char *msg = malloc(20);
	while(msg != NULL){
		msg = malloc(20);
	}
	return 0;
}
