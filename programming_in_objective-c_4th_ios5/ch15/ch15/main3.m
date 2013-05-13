//
//  main.m
//  ch15
//
//  Created by 裴超 on 13-5-13.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>

int main3(int argc, char* argv[])
{
	@autoreleasepool{
		NSString *s1 = @"This is string A";
		NSString *s2 = @"This is string B";
		NSString *res;
		NSComparisonResult compareResult;
		
		NSLog(@"Length of s1: %lu", [s1 length]);
		
		res = [NSString stringWithString: s1];
		NSLog(@"copy: %@", res);
		
		s2 = [s1 stringByAppendingString: s2];
		NSLog(@"Concatentation: %@", s2);
		
		if([s1 isEqualToString: res] == YES)
			NSLog(@"s1 == res");
		else
			NSLog(@"s1 != res");
			
		compareResult = [s1 compare: s2];
		if (compareResult == NSOrderedAscending)
			NSLog (@"str1 < str2");
		else if (compareResult == NSOrderedSame)
			NSLog (@"str1 == str2");
		else // must be NSOrderedDescending
			NSLog (@"str1 > str2");
			
		res = [s1 uppercaseString];
		NSLog(@"Uppercase conversion: %s", [res UTF8String]);
		
		res = [s1 lowercaseString];
		NSLog(@"Lowercase conversion: %@", res);
		
		NSLog(@"Original string: %@", s1);
	}
	
	return 0;
}
