//
// Created by 裴超 on 13-5-9.
// Copyright (c) 2013 ___peichao___. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Rectangle.h"


@implementation Rectangle {

}
-(Rectangle *) initWithWidth:(int) w andHeight:(int) h
{
	self = [super init];
	width = w;
	height = h;
	return self;
}
@synthesize width, height;
@end