//
//  Sales_data.h
//  ch02
//
//  Created by 裴超 on 14-2-13.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#ifndef ch02_Sales_data_h
#define ch02_Sales_data_h


struct Sales_data {
	std::string bookNo;
	double price = 0;
	unsigned units_sold = 0;
	double revenue = 0.0;
};

#endif
