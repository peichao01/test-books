//利用指定的参数 int sock,与localhost(127.0.0.1)的8001号端口建立连接
//失败时返回0，成功时返回1
//

int ConnectToServer(int sock)
{
	struct sockaddr_in s_addr_in;

	s_addr_in.sin_family = AF_INET;
	s_addr_in.sin_port = htons(8001);

	s_addr_in.sin_addr.s_addr = inet_addr("127.0.0.1");

	if(connect(sock, (struct sockaddr*)&s_addr_in, sizeof(s_addr_in)) < 0)
		return 0;
	return 1;
}
