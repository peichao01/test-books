//
//  PCViewController.m
//  SpriteKitSimpleGame
//
//  Created by 裴超 on 14-2-6.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCViewController.h"
#import "PCMyScene.h"

@implementation PCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
//    SKView * skView = (SKView *)self.view;
//    skView.showsFPS = YES;
//    skView.showsNodeCount = YES;
//    
//    // Create and configure the scene.
//    SKScene * scene = [PCMyScene sceneWithSize:skView.bounds.size];
//    scene.scaleMode = SKSceneScaleModeAspectFill;
//    
//    // Present the scene.
//    [skView presentScene:scene];
}

-(void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	
	
	// Configure the view.
	SKView* skView = (SKView*)self.view;
	skView.showsFPS = YES;
	skView.showsNodeCount = YES;
	
	// Create and configure the scene
	SKScene* scene = [PCMyScene sceneWithSize:skView.bounds.size];
	scene.scaleMode = SKSceneScaleModeAspectFit;
	
	// Present the scene
	[skView presentScene:scene];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
