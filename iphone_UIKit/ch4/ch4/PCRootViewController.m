//
//  PCRootViewController.m
//  ch4
//
//  Created by 裴超 on 14-2-4.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCRootViewController.h"

@interface PCRootViewController ()

@end

@implementation PCRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		//NSLog(@"aa");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
//	[self testUILabel];
	[self testUIButton];
}

-(void)testUIButton
{
	UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	//UIButton* button = [UIButton buttonWithType:UIButtonType];
	button.frame = CGRectMake(100, 100, 200, 50); //self.view.bounds;
	button.backgroundColor = [[UIColor alloc] initWithRed:0.8 green:0.6 blue:0.1 alpha:1];
	button.showsTouchWhenHighlighted = YES;
	[button setTitle:@"Button" forState:UIControlStateNormal];
	[self.view addSubview:button];
}

-(void)testUILabel
{
	UILabel* label = [[UILabel alloc] init];
	label.frame = self.view.bounds;
	label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	label.textAlignment = NSTextAlignmentCenter;
	label.text = @"穷时候，乱时候，王小妮作序，让整个中国潸然泪下的小民往事！六十学写字，七十来写书";
	//	label.font = [UIFont fontWithName:@"Zapfino" size:48];
	label.adjustsFontSizeToFitWidth = YES;
	label.minimumScaleFactor = 0.98;
	label.shadowColor = [[UIColor alloc] initWithRed:0.8 green:1 blue:0.9 alpha:1];
	label.shadowOffset = CGSizeMake(1, -1);
	label.numberOfLines = 2;
	label.backgroundColor = [[UIColor alloc] initWithRed:0.4 green:0.6 blue:0.8 alpha:1.0];
	[self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
