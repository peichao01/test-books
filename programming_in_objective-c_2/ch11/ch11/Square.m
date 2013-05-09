//
// Created by 裴超 on 13-5-9.
// Copyright (c) 2013 ___peichao___. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Square.h"


@implementation Square
-(Square *) initWithSide: (int) s
{
	self = [self init];
	rect = [[Rectangle alloc] initWithWidth:s andHeight:s];
	return self;
}
-(int) setSide: (int) s
{
	[rect setWidth:s andHeight:s];
}
-(int) side
{
	return rect.width;
}
-(int) area
{
	return [rect area];
}
-(int) perimeter
{
	return [rect perimeter];
}
-(void) dealloc
{
	[rect release];
	[super dealloc];
}
@end