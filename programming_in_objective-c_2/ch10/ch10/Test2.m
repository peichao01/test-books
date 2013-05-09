//
// Created by 裴超 on 13-5-9.
// Copyright (c) 2013 ___peichao___. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Test2.h"
#import "Foo.h"


@implementation Test2 {

}
-(void) test {
	Foo *a, *b, *c;

	NSLog(@"Foo allocated: %i.", [Foo count]);

	a = [[Foo allocF] init];
	b = [[Foo allocF] init];
	c = [[Foo allocF] init];

	NSLog(@"Foo allocated: %i.", [Foo count]);
	[a release];
	[b release];
	[c release];
}
@end