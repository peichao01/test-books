//
//  main.m
//  ch15
//
//  Created by 裴超 on 13-5-13.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main2(int argc, char* argv[])
{
	@autoreleasepool {
		NSString* str = @"Programming is ver fun!";

		NSLog(@"%@", str);
		
		Fraction* f = [Fraction fractionWithNumerator:10 andDemonimator:23];
		NSLog(@"%@", f);
	}
	return 0;
}
