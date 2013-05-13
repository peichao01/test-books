//
//  Fraction.h
//  ch15
//
//  Created by 裴超 on 13-5-13.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
	int numerator;
	int denominator;
}
+(Fraction*) fractionWithNumerator:(int) n andDemonimator:(int) d;
-(Fraction*) initWithNumerator:(int) n andDemonimator:(int) d;
-(void) setNumerator:(int) n andDenominator:(int) d;
-(NSString*) description;

@end
