//
//  SpriteGameLevel1.m
//  SpriteWalkthrough
//
//  Created by 裴超 on 14-2-7.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "SpriteGameLevel1.h"

@implementation SpriteGameLevel1

-(void)didMoveToView:(SKView *)view
{
	NSArray* monsterTextures = @[
						[SKTexture textureWithImageNamed:@"monster-walk-1.png"],
						[SKTexture textureWithImageNamed:@"monster-walk-2.png"],
						[SKTexture textureWithImageNamed:@"monster-walk-3.png"],
						[SKTexture textureWithImageNamed:@"monster-walk-4.png"],
						[SKTexture textureWithImageNamed:@"monster-walk-5.png"]
						];
	SKSpriteNode* monsterWalk1 = [[SKSpriteNode alloc] initWithTexture:monsterTextures[0]];
	monsterWalk1.anchorPoint = CGPointMake(0, 0);
	NSLog(@"x: %.2f, y: %.2f", monsterWalk1.anchorPoint.x, monsterWalk1.anchorPoint.y);
	[self addChild:monsterWalk1];
	[monsterWalk1 runAction:[SKAction repeatActionForever:[SKAction animateWithTextures:monsterTextures timePerFrame:0.1]]];
}

@end
