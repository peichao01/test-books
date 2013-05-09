//
// Created by 裴超 on 13-5-9.
// Copyright (c) 2013 ___peichao___. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Foo.h"

extern int gGlobalVar;

static int gCounter;

@implementation Foo {

}
-(void) setgGlobalVar: (int) val
{
	//extern int gGlobalVar;
	gGlobalVar = val;
}

+(Foo *)allocF {
	gCounter++;

	return [Foo alloc];
}
+(int) count{
	return gCounter;
}
@end