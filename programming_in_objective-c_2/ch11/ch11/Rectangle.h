//
// Created by 裴超 on 13-5-9.
// Copyright (c) 2013 ___peichao___. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>


@interface Rectangle : NSObject
{
	int width;
	int height;
}
@property int width, height;
-(Rectangle *) initWithWidth:(int) width andHeight:(int) height;
-(void) setWidth:(int)width andHeight:(int)height;
-(int) area;
-(int) perimeter;
@end