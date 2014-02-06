//
//  PCTestViewController.m
//  ch2
//
//  Created by 裴超 on 14-2-1.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCTestViewController.h"
#import "PCLayoutTest.h"

@interface PCTestViewController ()

@property(strong,nonatomic)PCLayoutTest* layout;
@property(strong,nonatomic)UIButton* button;

@end

@implementation PCTestViewController

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
	//NSLog(@"abc");
	
	self.view.backgroundColor = [[UIColor alloc]initWithRed:0.8 green:0.6 blue:0.8 alpha:0.8];
	
	CGRect rect = self.view.frame;
	_layout = [[PCLayoutTest alloc] initWithFrame:CGRectMake(10, 10, rect.size.width - 20, rect.size.height - 20)];
	_layout.backgroundColor = [[UIColor alloc] initWithRed:0.6 green:0.8 blue:0.4 alpha:0.8];
	[self.view addSubview:_layout];
	
	_button = [[UIButton alloc] initWithFrame:CGRectZero];
	[_button setTitle:@"click me" forState:UIControlStateNormal];
	_button.frame = CGRectMake(100, self.view.frame.size.height - 50, 100, 50);
	_button.backgroundColor = [[UIColor alloc] initWithRed:0.2 green:0.4 blue:0.8 alpha:0.8];
	_button.titleLabel.textColor = [UIColor whiteColor];
	[self.view addSubview:_button];
	
	[_button addTarget:self
				action:@selector(onButtonTouchUpInside:)
	  forControlEvents:UIControlEventTouchUpInside];
}

-(void)onButtonTouchUpInside:(id)sender
{
	//UILabel* child1 = [_layout getChild:1];
	UILabel* child1 = [_layout.subviews objectAtIndex:0];
	CGRect rect = CGRectMake(100, 100, 200, 100);
	child1.frame = rect;
	child1.center = _layout.center;
	
	//[_layout layoutIfNeeded];
	[_layout setNeedsLayout];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
