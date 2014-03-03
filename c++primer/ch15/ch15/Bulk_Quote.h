//
//  Bulk_Quote.h
//  ch15
//
//  Created by 裴超 on 14-2-25.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#ifndef __ch15__Bulk_Quote__
#define __ch15__Bulk_Quote__

#include <iostream>
#include "Quote.h"

class Bulk_Quote: public Quote
{
public:
	double net_price(std::size_t) const override;
};

#endif /* defined(__ch15__Bulk_Quote__) */
