//
//  main.m
//  ch10
//
//  Created by 裴超 on 05/09/13.
//  Copyright (c) 2013 ___peichao___. All rights reserved.
//

//#import <Foundation/Foundation.h>
//#import "Test1.h"
//#import "Test2.h"
#import "Test5.h"

int gGlobalVar = 5;

int main(int argc, const char * argv[])
{

    @autoreleasepool {
		Test5 *t = [Test5 new];
		[t test];
		[t release];
    }

    return 0;
}
