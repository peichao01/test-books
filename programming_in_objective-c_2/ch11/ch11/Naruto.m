//
// Created by 裴超 on 13-5-9.
// Copyright (c) 2013 ___peichao___. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Naruto.h"


@implementation Naruto
@synthesize age, name;
-(void) setName:(NSString *)name andAge:(int) age
{
	self->name = name;
	self->age = age;
}
@end