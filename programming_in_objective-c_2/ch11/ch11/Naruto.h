//
// Created by 裴超 on 13-5-9.
// Copyright (c) 2013 ___peichao___. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>


@interface Naruto : NSObject
{
	NSString *name;
	int age;
}
@property int age;
@property NSString *name;
-(void) setName:(NSString *)name andAge:(int) age;
@end