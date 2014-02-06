//
//  PCModalDialogViewController.m
//  ch2
//
//  Created by 裴超 on 14-2-2.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCModalDialogViewController.h"

@interface PCModalDialogViewController ()

@end

@implementation PCModalDialogViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
	UILabel* label = [[UILabel alloc] initWithFrame:self.view.bounds];
	label.backgroundColor = [[UIColor alloc] initWithRed:0.8 green:0.6 blue:0.4 alpha:0.8];
	label.textColor = [UIColor whiteColor];
	label.textAlignment = NSTextAlignmentCenter; //UITextAlignmentCenter;
	label.text = @"您好，我是模态viewController";
	[self.view addSubview:label];
	
	UIButton* goodbyeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[goodbyeButton setTitle:@"good-bye" forState:UIControlStateNormal];
	[goodbyeButton sizeToFit];
	CGPoint p = self.view.center;
	p.y += 80;
	goodbyeButton.center = p;
//	[goodbyeButton addTarget:self
//					  action:@selector(onGoodbyeButtonTouchUpInside)
//			forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:goodbyeButton];
}

-(void)onGoodbyeButtonTouchUpInside
{
	//[self dismissModalViewControllerAnimated:YES];
//	[self dismissViewControllerAnimated:YES completion:^{
//		
//	}];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
