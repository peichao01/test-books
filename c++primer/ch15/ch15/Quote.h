//
//  Quote.h
//  ch15
//
//  Created by 裴超 on 14-2-25.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#ifndef __ch15__Quote__
#define __ch15__Quote__

#include <iostream>

class Quote {
public:
	Quote() =default;
	Quote(const std::string &book, double sales_price):
		bookNo(book),price(sales_price){}
	
	std::string isbn() const;
	virtual double net_price(std::size_t n) const
	{ return n * price; }
	
	virtual ~Quote() = default;
	
private:
	std::string bookNo;
protected:
	double price = 0.0;
};

#endif /* defined(__ch15__Quote__) */
