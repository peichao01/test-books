//
//  PCNavViewController1.m
//  ch2
//
//  Created by 裴超 on 14-2-1.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCNavViewController1.h"
#import "PCModalDialogViewController.h"

@interface PCNavViewController1 ()

@end

@implementation PCNavViewController1

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		//[self addButton];
		CGPoint centerPoint = self.view.center;
		float y1 = centerPoint.y + 50;
		float y2 = centerPoint.y + 100;
		float y3 = centerPoint.y + 150;
		UIButton* button1 = [self getButtonWithTitle:@"上一级" AndY:y1];
		UIButton* button2 = [self getButtonWithTitle:@"根目录" AndY:y2];
		UIButton* button3 = [self getButtonWithTitle:@"view2" AndY:y3];
		
		[button1 addTarget:self
					action:@selector(onButton1TouchUpInside:)
		  forControlEvents:UIControlEventTouchUpInside];
		[button2 addTarget:self
					action:@selector(onButton2TouchUpInside:)
		  forControlEvents:UIControlEventTouchUpInside];
		[button3 addTarget:self
					action:@selector(onButton3TouchUpInside:)
		  forControlEvents:UIControlEventTouchUpInside];
		
		[self.view addSubview:button1];
		[self.view addSubview:button2];
		[self.view addSubview:button3];
		
		self.navigationItem.prompt = @"第一行信息";
		self.navigationItem.title = @"标题";
		//right button
		UIBarButtonItem* rightItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:nil action:nil];
		self.navigationItem.rightBarButtonItem = rightItem;
		UIImage* leftImage = [UIImage imageNamed:@"concats.png"];
		UIBarButtonItem* leftItem = [[UIBarButtonItem alloc] initWithImage:leftImage style:UIBarButtonItemStyleDone target:nil action:nil];
		self.navigationItem.leftBarButtonItem = leftItem;
		self.navigationItem.leftBarButtonItem = nil;
		
		UISlider* slider = [[UISlider alloc] initWithFrame:CGRectZero];
		[slider addTarget:self
				   action:@selector(onSliderSlide:)
		 forControlEvents:UIControlEventValueChanged];
		//slider.frame = CGRectMake(0, 0, self.view.frame.size.width, 30);
		
		self.navigationItem.titleView = slider;
		
		//id dialog =
    }
    return self;
}

-(void)onSliderSlide:(UISlider*)sender
{
	//NSLog(@"%@", [sender class]);
	NSLog(@"value: %.2f", [sender value]);
	UIColor* color = [[UIColor alloc] initWithRed:[sender value] green:0.4 blue:0.8 alpha:0.9];
	self.view.backgroundColor = color;
}

-(UIButton*)getButtonWithTitle:(NSString*)title AndY:(float)y
{
	UIButton* button = [[UIButton alloc] initWithFrame:CGRectZero];
	[button setTitle:title forState:UIControlStateNormal];
	button.backgroundColor = [[UIColor alloc] initWithRed:0.3 green:0.5 blue:0.7 alpha:0.9];
	CGPoint newPoint = button.center;
	newPoint.y = y;
	button.center = newPoint;
	[button sizeToFit];
	return button;
}

-(void)onButton1TouchUpInside:(id)sender
{
	[self.navigationController popViewControllerAnimated:NO];
}

-(void)onButton2TouchUpInside:(id)sender
{
	[self.navigationController popToRootViewControllerAnimated:YES];
}

-(void)onButton3TouchUpInside:(id)sender
{
	//[self.navigationController popToViewController:self.navigationController.view.subviews animated:YES];
	NSArray* viewControllers = self.navigationController.viewControllers;
	NSLog(@"%@", viewControllers);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
	PCModalDialogViewController* dialog = [[PCModalDialogViewController alloc] init];
	[self presentViewController:dialog
					   animated:YES
					 completion:^{
						 
					 }];
	[self.view addSubview:dialog.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
