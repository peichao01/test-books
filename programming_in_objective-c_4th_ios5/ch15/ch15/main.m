//
//  main.m
//  ch15
//
//  Created by 裴超 on 13-5-13.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>

int main1(int argc, const char * argv[])
{

	@autoreleasepool {
		
		NSNumber *myNumber, *floatNumber, *intNumber;
		NSInteger myInt;
		
		intNumber = [NSNumber numberWithInteger:100];
		myInt = [intNumber integerValue];
		NSLog(@"%li", (long)myInt);
		
		myNumber = [NSNumber numberWithLong:0xabcdef];
		NSLog(@"%lx", [myNumber longValue]);
		
		myNumber = [NSNumber numberWithChar:'X'];
		NSLog(@"%c", [myNumber charValue]);
		
		floatNumber = [NSNumber numberWithFloat:100.00];
		NSLog(@"%g", [floatNumber floatValue]);
		
		myNumber = [NSNumber numberWithDouble:12345e+15];
		NSLog(@"%lg", [myNumber doubleValue]);
		
		NSLog(@"%li", (long)[myNumber integerValue]);
		
		if([intNumber isEqualToNumber:floatNumber] == YES)
			NSLog(@"Numbers are equal");
		else
			NSLog(@"Numbers are not equal");
		
		if([intNumber compare:myNumber] == NSOrderedAscending)
			NSLog(@"First number is less than second");
	    
	}
    return 0;
}

