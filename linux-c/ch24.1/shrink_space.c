int is_space(char c)
{
	return (c == ' ' || c == '\t' || c == '\n' || c == '\r') ? 1 : 0;
}

char *shrink_space(char *dest, const char *src, size_t n)
{
	int i = 0, j = 0;
	int is_prev_space = 0;
	int is_now_space = 0;
	char c = src[0];
	while(c != '\0' && i < n){
		/*if(is_space(c)){
			is_now_space = 1;
		}else{
			is_now_space = 0;
		}*/
		is_now_space = is_space(c);

		if(!is_now_space){ // || (is_now_space && !is_prev_space)){
			dest[j++] = c;
		}else if(!is_prev_space){
			dest[j++] = ' ';
		}
		c = src[++i];
		is_prev_space = is_now_space;
	}
	dest[j] = '\0';
	return dest;
}

