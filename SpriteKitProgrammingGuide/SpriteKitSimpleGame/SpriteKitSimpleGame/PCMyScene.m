//
//  PCMyScene.m
//  SpriteKitSimpleGame
//
//  Created by 裴超 on 14-2-6.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCMyScene.h"

@implementation PCMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
//        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
//        
//        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
//        
//        myLabel.text = @"Hello, World!";
//        myLabel.fontSize = 30;
//        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
//                                       CGRectGetMidY(self.frame));
//        
//        [self addChild:myLabel];
		
		self.backgroundColor = [SKColor colorWithRed:1 green:1 blue:1 alpha:1];
		SKSpriteNode* player = [SKSpriteNode spriteNodeWithImageNamed:@"player"];
		player.position = CGPointMake(player.size.width / 2, size.height/2);
		[self addChild:player];
		
//		[self addMonster];
		SKAction* actionAddMonster = [SKAction runBlock:^{
			[self addMonster];
		}];
		SKAction* actionWaitNextMonster = [SKAction waitForDuration:1];
		[self runAction:[SKAction repeatActionForever:[SKAction sequence:@[actionAddMonster, actionWaitNextMonster]]]];
		
		//SKTexture texturewithrect
    }
    return self;
}

-(void)addMonster
{
	SKSpriteNode* monster = [SKSpriteNode spriteNodeWithImageNamed:@"monster"];
	
	CGSize winSize = self.size;
	int minY = monster.size.height / 2;
	int maxY = winSize.height - monster.size.height / 2;
	int rangeY = maxY - minY;
	int actualY = (arc4random() % rangeY) + minY;
	
	monster.position = CGPointMake(winSize.width + monster.size.width / 2, actualY);
	[self addChild:monster];
	
	int minDuration = 2.0;
	int maxDuration = 4.0;
	int rangeDuration = maxDuration - minDuration;
	int actualDuration = (arc4random() % rangeDuration) + minDuration;
	
	SKAction* actionMove = [SKAction moveTo:CGPointMake(-monster.size.width/2, actualY) duration:actualDuration];
	SKAction* actionMoveDone = [SKAction runBlock:^{
		[monster removeFromParent];
	}];
	[monster runAction:[SKAction sequence:@[actionMove, actionMoveDone]]];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
//    for (UITouch *touch in touches) {
//        CGPoint location = [touch locationInNode:self];
//        
//        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
//        
//        sprite.position = location;
//        
//        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
//        
//        [sprite runAction:[SKAction repeatActionForever:action]];
//        
//        [self addChild:sprite];
//    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
