#include <stdio.h>

int main(void)
{
	char str[] = "hello";
	char reverse_str[6] = "";
	int i, j=0;
	for(i=6; i>=0; i--){
		if(str[i] != '\0'){
			reverse_str[j++] = str[i];
		}
	}
	printf("%s\n", reverse_str);
	return 0;
}
