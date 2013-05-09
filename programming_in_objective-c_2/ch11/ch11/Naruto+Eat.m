//
// Created by 裴超 on 13-5-9.
// Copyright (c) 2013 ___peichao___. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Naruto+Eat.h"


@implementation Naruto (Eat)
-(void) eat:(NSString *)food
{
	if([food isEqualToString:@"lamian"]){
		NSLog(@"wa! this is my favorite food! %@!!", food);
	}else{
		NSLog(@"no! i dont like %@, i just only love lamian!!", food);
	}
}
@end