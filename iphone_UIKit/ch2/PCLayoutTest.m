//
//  PCLayoutTest.m
//  ch2
//
//  Created by 裴超 on 14-2-1.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCLayoutTest.h"

@interface PCLayoutTest()

@property UILabel* child1;
@property UILabel* child2;

@end

@implementation PCLayoutTest

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		_child1 = [[UILabel alloc] initWithFrame:CGRectZero];
		_child1.text = @"CHILD 1";
		[_child1 sizeToFit];
		_child1.backgroundColor = [UIColor redColor];
		_child1.textColor = [UIColor whiteColor];
		
		_child2 = [[UILabel alloc] initWithFrame:CGRectZero];
		_child2.text = @"CHILD 2";
		[_child2 sizeToFit];
		_child2.backgroundColor = [UIColor blueColor];
		_child2.textColor = [UIColor whiteColor];
		_child2.center = CGPointMake(_child2.center.x, _child2.center.y + 30);
		//_child2.center = CGPointMake(0, 0);
		//NSLog(@"x: %.2f, y: %.2f", _child2.center.x, _child2.center.y);
		
		[self addSubview:_child1];
		[self addSubview:_child2];
    }
    return self;
}

-(void)layoutSubviews
{
	[super layoutSubviews];
	CGRect newRect = _child1.frame;
	newRect.origin.x = 0;
	newRect.origin.y = self.frame.size.height - _child1.frame.size.height;
	_child1.frame = newRect;
	
	newRect = _child2.frame;
	newRect.origin.x = self.frame.size.width - _child2.frame.size.width;
	newRect.origin.y = 0;
	_child2.frame = newRect;
}

-(UILabel*)getChild:(int)index
{
	if (index == 1) {
		return _child1;
	}
	else
	{
		return _child2;
	}
}

-(void)didAddSubview:(UIView *)subview
{
	NSString* desc;
	if ([subview isKindOfClass:[UILabel class]]) {
		desc = ((UILabel*)subview).text;
	}
	else
	{
		desc = @"nothing";
	}
	NSLog(@"didAddSubview: %@", desc);
}

-(void)willMoveToSuperview:(UIView *)newSuperview
{
	NSLog(@"willMoveToSuperview: %@", [newSuperview description]);
}

-(void)didMoveToSuperview
{
	NSLog(@"didMoveToSuperview");
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
