//
//  main.cpp
//  ch15
//
//  Created by 裴超 on 14-2-25.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#include <iostream>
#include "Quote.h"
#include "Bulk_Quote.h"

int main(int argc, const char * argv[])
{

	// insert code here...
	std::cout << "Hello, World!\n";
    return 0;
}

double print_total(std::ostream &os, const Quote &item, std::size_t n)
{
	double ret = item.net_price(n);
	os << "ISBN: " << item.isbn() << " # sold: " << n << " total due: " << ret << std::endl;
	return ret;
}