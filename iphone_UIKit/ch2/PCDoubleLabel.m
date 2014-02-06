//
//  PCDoubleLabel.m
//  ch2
//
//  Created by 裴超 on 14-2-1.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCDoubleLabel.h"

@implementation PCDoubleLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(CGSize)sizeThatFits:(CGSize)size
{
	CGFloat x1, x2, y1, y2;
	if(_label1.frame.origin.x < _label2.frame.origin.x)
	{
		x1 = _label1.frame.origin.x;
	}
	else
	{
		x1 = _label2.frame.origin.x;
	}
	
	
	if(_label1.frame.origin.x + _label1.frame.size.width >
	   _label2.frame.origin.x + _label2.frame.size.width)
	{
		x2 = _label1.frame.origin.x + _label1.frame.size.width;
	}
	else
	{
		x2 = _label2.frame.origin.x + _label2.frame.size.width;
	}
	
	if(_label1.frame.origin.y < _label2.frame.origin.y)
	{
		y1 = _label1.frame.origin.y;
	}
	else
	{
		y1 = _label2.frame.origin.y;
	}
	
	if(_label1.frame.origin.y + _label1.frame.size.height >
	   _label2.frame.origin.y + _label2.frame.size.height)
	{
		y2 = _label1.frame.origin.y + _label1.frame.size.height;
	}
	else
	{
		y2 = _label2.frame.origin.y + _label2.frame.size.height;
	}
	
	size.width = x2 - x1;
	size.height = y2 - y1;
	return size;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
