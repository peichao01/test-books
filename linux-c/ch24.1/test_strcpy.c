#include <stdio.h>
#include <string.h>

int main(void)
{
	int i;
	//char *str_dest = "";
	char str_dest[16];
	char *str_src = "Hello everyone!";

	strcpy(str_dest, str_src);
	printf("str_dest:%s\n", str_dest);

	for(i=0;i<20;i++){
		printf("%s ", str_dest[i] == '\0'?"true":"false");
		printf("%c",str_dest[i]);
		putchar('\n');
	}
	putchar('\n');

	//buf长度不足，但依然能够打印出完整的“hello”
	char buf[3];
	printf(strcpy(buf, "hello"));
	putchar('\n');	
	
	//确实长度为3
	printf("%ld\n", sizeof(buf));

	long int size = sizeof(buf);

	//打印出来也只有“hel”三个char
	for(i=0; i<size; i++){
		printf("%c ", buf[i]);
	}
	putchar('\n');

	//测试：从buf的第一个元素地址连续打印10个地址内的内容
	//前5个是：hello，说明即便buf空间不足，但strcpy仍然会把内容复制到连续内存中。
	//即：strcpy只知道src字符串的首地址，不知道长度，他会一直拷贝到'\0'为止，
	//所以，如果dest所指向的内存空间不够大的话，可能会写越界。
	char *buf_p = &buf[0];
	char c = *buf_p;
	i = 0;
	
	while(c != '\0'){
		c = *(buf_p + i++);
		printf("%c", c);
	}
	putchar('\n');


	for(i=0;i<10;i++){
		printf("%s ", *(buf_p+i) == '\0'?"true":"false");
		printf("%c\n", *(buf_p+i));
	}
	putchar('\n');
	

	//putchar('\n');	
	//putchar('\n');	

	return 0;
}
