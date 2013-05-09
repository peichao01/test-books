//
// Created by 裴超 on 13-5-9.
// Copyright (c) 2013 ___peichao___. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Rectangle.h"


@implementation Rectangle
@synthesize width, height;
-(Rectangle *) initWithWidth:(int) width andHeight:(int) height
{
	self = [self init];
	[self setWidth:width andHeight:height];
	return self;
}
-(void) setWidth:(int)width andHeight:(int)height{
	self->width = width;
	self->height = height;
}
-(int) area
{
	return width * height;
}
-(int) perimeter
{
	return (width + height) * 2;
}
@end