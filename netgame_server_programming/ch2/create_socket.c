//
//
int CreateSocket()
{
	int newSock;

	newSock = socket(AF_INET, SOCK_STREAM, 0);

	if(newSock < 0)
		return -1;
	return newSock;
}
