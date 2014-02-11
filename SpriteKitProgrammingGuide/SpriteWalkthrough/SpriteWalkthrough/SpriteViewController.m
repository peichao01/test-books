//
//  SpriteViewController.m
//  SpriteWalkthrough
//
//  Created by 裴超 on 14-1-28.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "SpriteViewController.h"
#import <SpriteKit/SpriteKit.h>
//#import "HelloScene.h"
#import "SpriteLearningScene.h"
#import "SpriteGameLevel1.h"

@interface SpriteViewController ()

@end

@implementation SpriteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	SKView* spriteView = (SKView*) self.view;
	spriteView.showsDrawCount = YES;
	spriteView.showsNodeCount = YES;
	spriteView.showsFPS = YES;
}

-(void)viewWillAppear:(BOOL)animated
{
	//HelloScene* hello = [[HelloScene alloc] initWithSize:CGSizeMake(768, 1024)];
	
	[self test1];
//	[self testTextures];
}

-(void)testTextures
{
	NSArray* textureArrayForLevel1 = @[
									   [SKTexture textureWithImageNamed:@"monster-walk-1.png"],
									   [SKTexture textureWithImageNamed:@"monster-walk-2.png"],
									   [SKTexture textureWithImageNamed:@"monster-walk-3.png"],
									   [SKTexture textureWithImageNamed:@"monster-walk-4.png"],
									   [SKTexture textureWithImageNamed:@"monster-walk-5.png"],
									   ];
	[SKTexture preloadTextures:textureArrayForLevel1 withCompletionHandler:^{
		SpriteGameLevel1* gameSceneLevel1 = [[SpriteGameLevel1 alloc] initWithSize:self.view.frame.size];
		SKView* spriteView = (SKView*)self.view;
		[spriteView presentScene:gameSceneLevel1];
	}];
}

-(void)test1
{
	SpriteLearningScene* scene = [[SpriteLearningScene alloc] initWithSize:self.view.frame.size];
	
	SKView* spriteView = (SKView*) self.view;
	//[spriteView presentScene:hello];
	[spriteView presentScene:scene];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
