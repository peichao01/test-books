//
//  main.m
//  ch15
//
//  Created by 裴超 on 13-5-13.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>

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
	}
	
	return 0;
}
