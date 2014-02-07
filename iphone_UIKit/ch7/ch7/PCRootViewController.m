//
//  PCRootViewController.m
//  ch7
//
//  Created by 裴超 on 14-2-6.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCRootViewController.h"
#import "PCTestTableViewController.h"

@interface PCRootViewController ()

@end

@implementation PCRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		UIButton* buttonTable = [UIButton buttonWithType:UIButtonTypeRoundedRect];
		buttonTable.frame = CGRectMake(10, 80, self.view.bounds.size.width - 20, 50);
//		buttonTable.titleLabel.text = @"table view controller";
		[buttonTable setTitle:@"table view controller" forState:UIControlStateNormal];
		[buttonTable setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//		[buttonTable sizeToFit];
//		NSLog(@"%.2f",self.view.bounds.size.width);
		buttonTable.backgroundColor = [UIColor colorWithRed:0.1 green:0.3 blue:0.5 alpha:1];
		[buttonTable addTarget:self
						action:@selector(buttonTableDidPush)
			  forControlEvents:UIControlEventTouchUpInside];
//		buttonTable.titleLabel.backgroundColor = [UIColor colorWithRed:0.4 green:0.6 blue:0.8 alpha:1];
//		buttonTable.titleLabel.textColor = [UIColor colorWithRed:0.8 green:0.7 blue:0.6 alpha:1];
		[self.view addSubview:buttonTable];
    }
    return self;
}

-(void)buttonTableDidPush
{
	PCTestTableViewController* tableViewController = [[PCTestTableViewController alloc] init];
	[self.navigationController pushViewController:tableViewController animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	//NSLog(@"a");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
