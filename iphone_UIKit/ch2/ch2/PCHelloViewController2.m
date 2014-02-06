//
//  PCHelloViewController2.m
//  ch2
//
//  Created by 裴超 on 14-2-1.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCHelloViewController2.h"

@interface PCHelloViewController2 ()

@end

@implementation PCHelloViewController2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		
		//=================== test 2 begin
		self.title = @"你好";
		//UIImage* icon = [UIImage imageNamed:@"ball2.png"];
		UIImage* icon = [UIImage imageNamed:@"concats.png"];
		UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"通讯录" image:icon tag:1];
		//UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:1];
		tabBarItem.badgeValue = @"1	";
		self.tabBarItem = tabBarItem;
		//=================== test 2 end
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
	//=================== test 1 begin
//	UILabel* label = [[UILabel alloc] initWithFrame:self.view.bounds];
//	label.text = @"你好，世界！";
//	label.backgroundColor = [UIColor blackColor];
//	label.textColor = [UIColor whiteColor];
//	label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
//	[self.view addSubview:label];
//	
//	UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//	[button setTitle:@"画面跳转" forState:UIControlStateNormal];
//	[button sizeToFit];
//	[button addTarget:self
//			   action:@selector(buttonDidPush:)
//	 forControlEvents:UIControlEventTouchUpInside];
//	CGPoint newPoint = self.view.center;
//	newPoint.y += 50;
//	button.center = newPoint;
//	button.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
//	[self.view addSubview:button];
	//=================== test 1 end
}

-(void)buttonDidPush:(id)sender
{
	[self.view.window sendSubviewToBack:self.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
