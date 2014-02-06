//
//  PCHelloViewController.m
//  ch2
//
//  Created by 裴超 on 14-2-1.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCHelloViewController.h"

@interface PCHelloViewController ()

@end

@implementation PCHelloViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		
		//===============test 2 begin
		self.view.backgroundColor = [[UIColor alloc]initWithRed:0.3 green:0.6 blue:0.9 alpha:0.8];
		self.title = @"Hello";
		UIImage* icon = [UIImage imageNamed:@"ball1.png"];
		UITabBarItem* tabBarItem1 = [[UITabBarItem alloc] initWithTitle:@"Hello" image:icon tag:0];
		//UITabBarItem* tabBarItem1 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostViewed tag:0];
		//[tabBarItem1 setImage:icon];
		self.tabBarItem = tabBarItem1;
		//===============test 2 end
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
	//===============test 1 begin
//	UILabel* label = [[UILabel alloc]initWithFrame:self.view.bounds];
//	label.text = @"Hello, world!";
//	label.backgroundColor = [UIColor whiteColor];
//	label.textColor = [UIColor blackColor];
//	label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
//	[self.view addSubview:label];
	
//	UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//	[button setTitle:@"画面跳转" forState:UIControlStateNormal];
//	[button sizeToFit];
//	CGPoint newPoint = self.view.center;
//	newPoint.y += 50;
//	button.center = newPoint;
//	button.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
//	[button addTarget:self
//			   action:@selector(buttonDidPush:)
//	 forControlEvents:UIControlEventTouchUpInside];
//	[self.view addSubview:button];
	//===============test 1 end
}

//-(void)buttonDidPush:(id)sender
//{
//	UIWindow* win = self.view.window;
//	[win sendSubviewToBack:self.view];
//	//[window exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
//	//self.view.hidden = YES;
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
