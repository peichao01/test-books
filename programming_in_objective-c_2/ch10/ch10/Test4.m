//
// Created by 裴超 on 13-5-9.
// Copyright (c) 2013 ___peichao___. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Test4.h"
#import "Rectangle.h"

@implementation Test4 {

}
-(void) test
{
	Rectangle *rect = [[Rectangle alloc] initWithWidth:200 andHeight:100];
	NSLog(@"rect.width = %d, rect.height = %d.", rect.width, rect.height);
	[rect release];
}
@end