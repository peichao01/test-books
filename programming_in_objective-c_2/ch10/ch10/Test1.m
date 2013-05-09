//
// Created by 裴超 on 13-5-9.
// Copyright (c) 2013 ___peichao___. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Test1.h"
#import "Foo.h"

extern int gGlobalVar;


@implementation Test1 {

}
-(void) test{
	Foo *myFoo = [[Foo alloc] init];
	NSLog(@"%i ", gGlobalVar);

	[myFoo setgGlobalVar: 100];
	NSLog(@"%i ", gGlobalVar);

	gGlobalVar = 14;
	NSLog(@"%i ", gGlobalVar);

	[myFoo release];
}
@end