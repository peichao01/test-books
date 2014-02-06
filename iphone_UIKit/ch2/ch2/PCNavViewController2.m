//
//  PCNavViewController2.m
//  ch2
//
//  Created by 裴超 on 14-2-1.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCNavViewController2.h"

@interface PCNavViewController2 ()

@property UILabel* label;
@property UISlider* slider;
-(void)sliderDidChange;

@end

@implementation PCNavViewController2

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
	
	self.navigationItem.prompt = @"移动滑块后将改变画面颜色";
	_slider = [[UISlider alloc]init];
	_slider.frame = self.navigationController.navigationBar.bounds;
	_slider.minimumValue = 0.0;
	_slider.maximumValue = 1.0;
	//_slider.value = _slider.maximumValue / 2;
	_slider.value = (_slider.maximumValue - _slider.minimumValue) / 2;
	[_slider addTarget:self
				action:@selector(sliderDidChange)
	  forControlEvents:UIControlEventValueChanged];
	self.navigationItem.titleView = _slider;
	
	_label = [[UILabel alloc] init];
	_label.frame = CGRectInset(self.view.bounds, 10, 10);
	_label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	_label.backgroundColor = [UIColor blackColor];
	[self.view addSubview:_label];
	
	[self sliderDidChange];
	
	self.navigationController.navigationBar.tintColor = [UIColor redColor];
	
	UIBarButtonItem* button1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh
																			 target:self
																			 action:@selector(buttonDidPush)];
	UIBarButtonItem* spacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
	
	UIBarButtonItem* button2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemUndo
																			 target:self
																			 action:@selector(buttonDidPush)];
	
	UIBarButtonItem* buttonDone = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:nil];
	[self setToolbarItems:@[button1, spacer, button2, spacer, buttonDone] animated:YES];
}

-(void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	[self.navigationController setNavigationBarHidden:NO animated:NO];
	[self.navigationController setToolbarHidden:NO animated:NO];
	[self.navigationItem setHidesBackButton:YES animated:NO];
	
	//self.hidesBottomBarWhenPushed = YES;
	//[self setHidesBottomBarWhenPushed:YES];
	//[self.navigationController setHidesBottomBarWhenPushed:YES];
	
	self.navigationController.toolbar.tintColor = [UIColor blueColor];
}

-(void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
	[self.navigationController setToolbarHidden:YES animated:NO];
}
								
-(void)buttonDidPush
{
	
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	[self.navigationItem setHidesBackButton:NO animated:YES];
}

-(void)sliderDidChange
{
	UIColor* color = [[UIColor alloc] initWithRed:_slider.value
											green:_slider.value
											 blue:_slider.value
											alpha:1.0];
	_label.backgroundColor = color;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
