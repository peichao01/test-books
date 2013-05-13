//
//  Fraction.m
//  ch15
//
//  Created by 裴超 on 13-5-13.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
+(Fraction*) fractionWithNumerator:(int) n andDemonimator:(int) d
{
	Fraction* f = [[Fraction alloc] initWithNumerator:n andDemonimator:d];
	return f;
}
-(Fraction*) initWithNumerator:(int) n andDemonimator:(int) d
{
	self = [self init];
	[self setNumerator:n andDenominator:d];
	return self;
}
-(void) setNumerator:(int) n andDenominator:(int) d
{
	numerator = n;
	denominator = d;
}

-(NSString*) description
{
	return [NSString stringWithFormat:@"%i/%i", numerator, denominator];
}

@end
