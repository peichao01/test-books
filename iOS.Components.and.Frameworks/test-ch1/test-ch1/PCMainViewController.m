//
//  PCMainViewController.m
//  test-ch1
//
//  Created by 裴超 on 14-3-2.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCMainViewController.h"

@interface PCMainViewController ()

@end

@implementation PCMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
//		[self test];
    }
    return self;
}

-(void)test
{
	UIDynamicAnimator* animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
	
	UIImage *frogImage = [UIImage imageNamed:@"frog.png"];
	UIImageView* frogImageView = [[UIImageView alloc] initWithImage:frogImage];
	
	[self.view addSubview:frogImageView];
	
//	UIGravityBehavior* gravityBehavior = [[UIGravityBehavior alloc]
//															initWithItems:@[frogImageView]];
//	
//	[animator addBehavior:gravityBehavior];
//
////	gravityBehavior set
//	[animator addBehavior:gravityBehavior];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
	
	
	UIImage *frogImage = [UIImage imageNamed:@"frog.png"];
	UIImageView* frogImageView = [[UIImageView alloc] initWithImage:frogImage];
	
	[self.view addSubview:frogImageView];
	NSLog(@"aa");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
