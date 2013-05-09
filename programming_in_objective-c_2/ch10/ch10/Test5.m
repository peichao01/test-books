//
// Created by 裴超 on 13-5-9.
// Copyright (c) 2013 ___peichao___. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Test5.h"


@implementation Test5 {

}
-(void) test
{
	NSLog(@"整型：");
	NSLog(@"%lu", sizeof(int));
	NSLog(@"%lu", sizeof(short int));
	NSLog(@"%lu", sizeof(long int));
	NSLog(@"%lu", sizeof(unsigned int));
	NSLog(@"%lu", sizeof(unsigned short));
	NSLog(@"%lu", sizeof(unsigned long));

	NSLog(@"浮点型：");
	NSLog(@"%lu", sizeof(float));
	NSLog(@"%lu", sizeof(double));
	NSLog(@"%lu", sizeof(long double));


	NSLog(@"字符（串）型：");
	char a='a';
	char b=98;
	NSLog(@"%c, %c", a, b);
	NSLog(@"%i, %i", a, b);
	NSLog(@"我是字符串");
}
@end