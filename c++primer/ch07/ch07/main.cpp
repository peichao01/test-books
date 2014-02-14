//
//  main.cpp
//  ch07
//
//  Created by 裴超 on 14-2-13.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#include <iostream>

struct Sales_data {
	std::string isbn() const {
		return bookNo;
	}
	Sales_data& combile(const Sales_data&);
	double avg_price() const;
	
	std::string bookNo;
	unsigned units_sold = 0;
	double revenue = 0.0;
};

int main(int argc, const char * argv[])
{

	// insert code here...
	std::cout << "Hello, World!\n";
    return 0;
}

