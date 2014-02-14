//
//  main.cpp
//  ch02
//
//  Created by 裴超 on 14-2-13.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#include <iostream>
#include "Sales_data.h"

// -------- 练习 2.39
//struct Foo { };


//
//struct Sales_data {
//	std::string bookNo;
//	unsigned units_sold = 0;
//	double revenue = 0.0;
//};

int main(int argc, const char * argv[])
{

	// insert code here...
//	std::cout << "Hello, World!\n";
	
	Sales_data data1, data2;
	
	std::cin >> data1.bookNo >> data1.units_sold >> data1.price;
	data1.revenue = data1.units_sold * data1.price;
	
	std::cin >> data2.bookNo >> data2.units_sold >> data2.price;
	data2.revenue = data2.units_sold * data2.price;
	
	if (data1.bookNo == data2.bookNo) {
		Sales_data data3;
		data3.revenue = data1.revenue + data2.revenue;
		data3.units_sold = data1.units_sold + data2.units_sold;
		data3.price = (data1.price + data2.price) / 2;
		
		std::cout << "revenue: " << data3.revenue << ", units_sold: " << data3.units_sold << std::endl;
	}
	else {
		std::cerr << "not the same book" << std::endl;
		return -1;
	}
	
    return 0;
}

