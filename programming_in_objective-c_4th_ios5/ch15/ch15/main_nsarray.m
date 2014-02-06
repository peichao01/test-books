//
//  main.m
//  ch15
//
//  Created by 裴超 on 13-5-13.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, char* argv[])
{
	@autoreleasepool{
		NSArray* arr;
		arr = [NSArray arrayWithObjects:@"one", @"two", @"three", nil];
		
		/*for(int i=0; i<[arr count]; i++)
			NSLog(@"index %d has %@", i, [arr objectAtIndex:i]);
		 */
		
		NSDictionary *d1 = [NSDictionary dictionaryWithObjectsAndKeys:@"Shanghai", @"Location", @"Programmer", @"Occupation", nil];
		NSLog(@"d1: %@", d1);
		
		NSLog(@"d1 count: %ld", [d1 count]);
		
		NSEnumerator *objs1 = [d1 objectEnumerator];
		for (NSObject *obj1 in objs1) {
			NSLog(@"obj: %@", obj1);
		}
		
		
		//////// part2
		Fraction* f1 = [Fraction fractionWithNumerator:1 andDemonimator:2];
		Fraction* f2 = [Fraction fractionWithNumerator:2 andDemonimator:3];
		Fraction* f3 = [Fraction fractionWithNumerator:3 andDemonimator:4];
		Fraction* f4 = [Fraction fractionWithNumerator:4 andDemonimator:5];

		NSDictionary* myFractionDict;
		myFractionDict = [NSDictionary dictionaryWithObjectsAndKeys:
						  f1, @"f1",
						  f2, @"f2",
						  f3, @"f3",
						  f4, @"f4", nil];

		Fraction* frac = [myFractionDict objectForKey:@"f4"];
		if(frac == nil){
			exit(1);
		}
		[frac setNumerator:3 andDenominator:7];
		NSLog(@"f4 is: %@", f4);
		NSLog(@"frac is: %@", frac);

		//遍历字典
		NSLog(@"***遍历字典 myFractionDict 如下：");
		for (id key in myFractionDict){
			NSLog(@"key: %@, value: %@", key, [myFractionDict objectForKey:key]);
		}
		NSLog(@"***遍历字典 myFractionDict 结束。");

		////////// NSMutableDictionary
		NSMutableDictionary *myNewDict = [NSMutableDictionary dictionary];
		for(id key in myFractionDict){
			[myNewDict setObject:[myFractionDict objectForKey:key] forKey:key];
		}

		NSString* newkey = @"newkey";
		NSString* newvalue = @"This is a new value";
		[myNewDict setObject:newvalue forKey:newkey];

		NSLog(@"***遍历字典 myNewDict 如下：");
		for(id key in myNewDict){
			NSLog(@"key: %@, value: %@", key, [myNewDict objectForKey:key]);
		}
		NSLog(@"***遍历字典 myNewDict 结束。");

		// 删除元素
		[myNewDict removeObjectForKey:@"newkey"];
		NSLog(@"now myNewDict: %@", myNewDict);
	}
	
	return 0;
}
