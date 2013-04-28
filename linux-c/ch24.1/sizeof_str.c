unsigned long int sizeof_str(const char *str)
{
	unsigned long int i = 0;
	while(str[i] != '\0'){
		i++;
	}
	return i;
}
