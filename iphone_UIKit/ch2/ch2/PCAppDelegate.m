//
//  PCAppDelegate.m
//  ch2
//
//  Created by 裴超 on 14-1-31.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCAppDelegate.h"
#import "PCTestViewController.h"
#import "PCHelloViewController.h"
#import "PCHelloViewController2.h"
#import "PCTopMenuViewController.h"

@interface PCAppDelegate()

@property(strong,nonatomic)UIViewController* rootViewController;

@end

@implementation PCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    //self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
	
	//--------------------test 1 begin
//	PCTestViewController* viewController = [[PCTestViewController alloc] init];
//	//[_window addSubview:viewController];
//	_window.rootViewController = viewController;
	//--------------------test 1 end
	
	//--------------------test 2 begin
//	PCHelloViewController* HelloVC = [[PCHelloViewController alloc]init];
//	PCHelloViewController2* HelloVC2 = [[PCHelloViewController2 alloc]init];
//	//_window.rootViewController = HelloVC;
//	[_window addSubview:HelloVC.view];
//	[_window addSubview:HelloVC2.view];
//	[_window bringSubviewToFront:HelloVC.view];
	//--------------------test 2 end
	
	//--------------------test 3 begin
//	_rootViewController = [[UITabBarController alloc]init];
//	PCHelloViewController* tab1 = [[PCHelloViewController alloc] init];
//	PCHelloViewController2* tab2 = [[PCHelloViewController2 alloc] init];
//	NSArray* tabs = @[tab1,tab2];
//	[(UITabBarController*)_rootViewController setViewControllers:tabs animated:NO];
//	[_window addSubview:_rootViewController.view];
	//--------------------test 3 end
	
	//===================== test 4 begin
	PCTopMenuViewController* topMenu = [[PCTopMenuViewController alloc] init];
	_rootViewController = [[UINavigationController alloc] initWithRootViewController:topMenu];
	[_window addSubview:_rootViewController.view];
	//===================== test 4 end
	
	_switcher = 0;

	//===================== test 0 begin
//	UILabel* label = [[UILabel alloc] initWithFrame:CGRectZero];
//	label.frame = CGRectMake(0, 0, 200, 50);
//	//label.center = CGPointMake(160, 240);
//	label.center = CGPointMake(200, 50);
//	label.text = @"Hello";
//	label.backgroundColor = [UIColor redColor];
//	//label.hidden = YES;
//	[self.window addSubview:label];
//	
//	NSLog(@"x = %f", label.frame.origin.x);
//	NSLog(@"y = %f", label.frame.origin.y);
//	NSLog(@"width = %f", label.frame.size.width);
//	NSLog(@"height = %f", label.frame.size.height);
	
	//======= 一个一个的打开
	//[self addButton];
	//[self addImageView];
	//[self testUIViewFit];
	//[self testAddSubView];
	//[self insertAndDeleteSubview];
	//[self testFrontOrBack];
	
	//===================== test 0 begin
    return YES;
}

-(void)testFrontOrBack
{
	_label1 = [self getRandLabelWithText:@"label 1"];
	[_window addSubview:_label1];
	
	_label2 = [self getRandLabelWithText:@"label 2"];
	//label2.frame.origin = CGPointMake(200, label2.frame.origin.y);
	_label2.frame = CGRectMake(200, _label2.frame.origin.y, _label2.frame.size.width, _label2.frame.size.height);
	[_window addSubview:_label2];
	
	_button1 = [self getRandButtonWithText:@"button 1"];
	[_button1 addTarget:self
				 action:@selector(button1TouchUpInside:)
	   forControlEvents:UIControlEventTouchUpInside];
	[_window addSubview:_button1];
	
	//[_window bringSubviewToFront:label2];
}

-(UIButton*)getRandButtonWithText:(NSString*)text
{
	UIButton* button = [[UIButton alloc] init];
	float halfHeight = _window.frame.size.height / 2;
	float halfWidth = _window.frame.size.width / 2;
	float x = halfWidth;//[self getRandom] * halfWidth / 2 + halfWidth;
	float y = [self getRandom] * halfHeight + halfHeight - 50;
	button.frame = CGRectMake(x, y, 150, 50);
	//button.titleLabel.text = text;
	[button setTitle:text forState:UIControlStateNormal];
	button.titleLabel.textColor = [self getRandomBackgroundColor];
	button.titleLabel.backgroundColor = [self getRandomBackgroundColor];
	button.backgroundColor = [self getRandomBackgroundColor];
	return button;
}

-(void)button1TouchUpInside:(id)sender
{
	//if ([_label1 indexOfAccessibilityElement:sender] == 1) {
	if (_switcher == 0) {
		[_window bringSubviewToFront:_label1];
	}
	else
	{
		[_window sendSubviewToBack:_label1];
	}
	_switcher = !_switcher;
}

-(UILabel*)getRandLabelWithText:(NSString*)text
{
	float x = [self getRandom] * _window.frame.size.width;
	float y = [self getRandom] * _window.frame.size.height;
	float width = [self getRandom] * _window.frame.size.width;
	float height = [self getRandom] * _window.frame.size.height;
	UILabel* label = [[UILabel alloc] init];
	label.text = text;
	if (width < 60) {
		//width = label.frame.size.width;
		width = 60;
	}
	NSLog(@"w: %.2f, lw: %.2f", width, label.frame.size.width);
	label.frame = CGRectMake(x, y, width, height);
	label.backgroundColor = [self getRandomBackgroundColor];
	label.textColor = [self getRandomBackgroundColor];
	return label;
}

-(void)insertAndDeleteSubview
{
	UILabel* parent = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 320)];
	//parent.textAlignment = [UITextAlignmentCenter];
	parent.text = @"parent";
	parent.backgroundColor = [self getRandomBackgroundColor];
	parent.textColor = [self getRandomBackgroundColor];
	[_window addSubview:parent];
	
	UILabel* child3 = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, 100, 50)];
	child3.text = @"child 3";
	[child3 sizeToFit];
	child3.backgroundColor = [self getRandomBackgroundColor];
	child3.textColor = [self getRandomBackgroundColor];
	[parent insertSubview:child3 atIndex:0];
	
	UILabel* child1 = [[UILabel alloc] initWithFrame:CGRectMake(5, 80, 100, 50)];
	child1.text = @"child 1";
	[child1 sizeToFit];
	child1.backgroundColor = [self getRandomBackgroundColor];
	child1.textColor = [self getRandomBackgroundColor];
	[parent insertSubview:child1 belowSubview:child3];
	
	UILabel* child2 = [[UILabel alloc] initWithFrame:CGRectMake(5, 200, 100, 50)];
	child2.text = @"child 2";
	[child2 sizeToFit];
	child2.backgroundColor = [self getRandomBackgroundColor];
	child2.textColor = [self getRandomBackgroundColor];
	[parent insertSubview:child2 aboveSubview:child1];
	
	[parent exchangeSubviewAtIndex:0 withSubviewAtIndex:2];
	
	//	if ([child3 isDescendantOfView:parent]) {
	//		[child3 removeFromSuperview];
	//	}
}

-(UIColor*)getRandomBackgroundColor
{
	float red = rand() / (float)RAND_MAX;
	float green = rand() / (float)RAND_MAX;
	float blue = rand() / (float)RAND_MAX;
	float alpha = rand() / (float)RAND_MAX;
	UIColor* color = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:alpha];
	//NSLog(@"red: %.2f, green: %.2f, blue: %.2f, alpha: %.2f", red, green, blue, alpha);
//	if ([view isKindOfClass:[UIButton class]])
//	{
//		view.backgroundColor = color;
//	}
//	else if ([view isKindOfClass:[UILabel class]])
//	{
//		view.backgroundColor = color;
//	}
	return color;
}

-(float)getRandom
{
	return rand() / (float)RAND_MAX;
}

-(void)testAddSubView
{
	UIButton* button11 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button11.frame = CGRectMake(10, 10, 300, 300);
	[button11 setTitle:@"1-1" forState:UIControlStateNormal];
	button11.backgroundColor = [[UIColor alloc] initWithRed:1 green:0.5 blue:.5 alpha:0.8];
	button11.titleLabel.textColor = [UIColor whiteColor];
	button11.titleLabel.backgroundColor = [[UIColor alloc] initWithRed:0.5 green:1 blue:1 alpha:0.8];
	[button11 addTarget:self
				action:@selector(button11DidPush:)
	  forControlEvents:UIControlEventTouchUpInside];
	[_window addSubview:button11];
	
	UIButton* button111 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button111.frame = CGRectMake(20, 20, 260, 100);
	[button111 setTitle:@"1-1-1" forState:UIControlStateNormal];
	button111.titleLabel.backgroundColor = [[UIColor alloc] initWithRed:0.5 green:0.5 blue:1 alpha:0.8];
	button111.backgroundColor = [[UIColor alloc] initWithRed:0.5 green:0.8 blue:0.3 alpha:0.8];
	[button111 addTarget:self
				  action:@selector(button111DidPush:)
		forControlEvents:UIControlEventTouchUpInside];
	[button11 addSubview:button111];
	
	UIButton* button112 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button112.frame = CGRectMake(20, 180, 260, 100);
	button112.backgroundColor = [[UIColor alloc] initWithRed:0.2 green:0.1 blue:0.6 alpha:0.8];
	button112.titleLabel.backgroundColor = [[UIColor alloc] initWithRed:0.7 green:0.8 blue:0.4 alpha:0.8];
	[button112 setTitle:@"1-1-2"
			   forState:UIControlStateNormal];
	[button112 addTarget:self
				  action:@selector(button112DidPush:)
		forControlEvents:UIControlEventTouchUpInside];
	[button11 addSubview:button112];
	
	
	UIButton* button1121 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button1121.frame = CGRectMake(10, 10, 95, 80);
	button1121.backgroundColor = [[UIColor alloc]initWithRed:0.1 green:0.2 blue:0.3 alpha:0.4];
	button1121.titleLabel.backgroundColor = [[UIColor alloc]initWithRed:0.3 green:0.4 blue:05. alpha:0.6];
	[button1121 setTitle:@"1-1-2-1" forState:UIControlStateNormal];
	[button1121 addTarget:self
				   action:@selector(button1121DidPush:)
		 forControlEvents:UIControlEventTouchUpInside];
	[button112 addSubview:button1121];
	
	UIButton* button1122 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button1122.frame = CGRectMake(155, 10, 95, 80);
	button1122.backgroundColor = [[UIColor alloc]initWithRed:0.7 green:0.6 blue:0.5 alpha:0.4];
	button1122.titleLabel.backgroundColor = [[UIColor alloc]initWithRed:0.2 green:0.4 blue:0.6 alpha:0.8];
	[button1122 setTitle:@"1-1-2-2" forState:UIControlStateNormal];
	[button1122 addTarget:self
				   action:@selector(button1122DidPush:)
		 forControlEvents:UIControlEventTouchUpInside];
	[button112 addSubview:button1122];
}

-(void)button11DidPush:(id)sender{
	[self alertMessage:sender];
}

-(void)button111DidPush:(id)sender{
	[self alertMessage:sender];
}

-(void)button112DidPush:(id)sender{
	[self alertMessage:sender];
}

-(void)button1121DidPush:(id)sender{
	[self alertMessage:sender];
}

-(void)button1122DidPush:(id)sender{
	[self alertMessage:sender];
}

-(void)alertMessage:(UIButton*)button
{
	NSString* title = [NSString stringWithFormat:@"self = %@", button.titleLabel.text];
	NSString* superViewName;
	if([button.superview isKindOfClass:[UIButton class]])
	{
		superViewName = ((UIButton*)button.superview).titleLabel.text;
	}
	else
	{
		superViewName = @"UIViewController";
	}
	
//	NSMutableString* subviews = [[NSMutableString alloc] initWithCapacity:64];
//	[subviews setString:@""];
	NSMutableString* subviews = [[NSMutableString alloc] initWithString:@""];
	int i = 0;
	for (id view in button.subviews) {
		NSString* addString;
		if ([view isKindOfClass:[UIButton class]]) {
			addString = ((UIButton*)view).titleLabel.text;
		}
		else if ([view isKindOfClass:[UILabel class]])
		{
			addString = ((UILabel*)view).text;
		}
		else
		{
			addString = [view description];
		}
		
		//if ([subviews length] > 0) {
		if(i > 0)
		{
			[subviews appendString:@", "];
		}
		
		[subviews appendString:addString];
		i++;
	}
	
	NSString* message = [NSString stringWithFormat:@"superview = %@\r\nsubviews = %@", superViewName, subviews];
	UIAlertView* alert = [[UIAlertView alloc] initWithTitle:title
													message:message
												   delegate:nil
										  cancelButtonTitle:nil
										  otherButtonTitles:@"OK", nil];
	[alert show];
}


-(void)testUIViewFit
{
	UILabel* label1 = [[UILabel alloc] initWithFrame:CGRectZero];
	//label1.center = CGPointMake(0, 0);
	label1.frame = CGRectMake(0, 0, 200, 50);
	//NSLog(@"center x: %.2f", label1.center.x);
	//NSLog(@"center y: %.2f", label1.center.y);
	label1.backgroundColor = [UIColor blueColor];
	label1.textColor = [UIColor whiteColor];
	label1.text = @"短字符串";
	//[label1 setToFit];
	[label1 sizeToFit];
	[_window addSubview:label1];
	
	UILabel* label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 100, 10)];
	label2.backgroundColor = [UIColor blueColor];
	label2.textColor = [UIColor whiteColor];
	label2.text = @"长--------------字符串";
	[label2 sizeToFit];
	//CGPoint newPoint = label2.center;
	//newPoint.y += 50;
	//label2.center = newPoint;
	[_window addSubview:label2];
}

-(void)addImageView
{
	UIImage* image = [[UIImage alloc] initWithContentsOfFile:@"Two_Way_Data_Binding.png"];
	//image.
	//UIImageView* imageView = [[UIImageView alloc] initWithImage:image];
	//imageView.frame.origin.x = 0;// = CGPointMake(0, 0);
	UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, _window.frame.size.width, _window.frame.size.height)];
	imageView.backgroundColor = [UIColor greenColor];
	imageView.image = image;
	[_window addSubview:imageView];
}

-(void)addButton
{
	//UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
	//label.text = @"toggle";
	CGRect rect = self.window.frame;
	UIButton* button = [[UIButton alloc] initWithFrame:CGRectZero];
	button.frame = CGRectMake(rect.size.width/2, rect.size.height/2, 200, 50);
	//button.backgroundColor = [UIColor blueColor];
	//button.backgroundColor = [UIColor blackColor];
	button.backgroundColor = [[UIColor alloc] initWithRed:1.0 green:0.5 blue:0.5 alpha:0.5];
	button.alpha = 0.2;
	//button//.color = [UIColor whiteColor];
//	button.
	button.titleLabel.text = @"toggle";
	[self.window addSubview:button];
	
	//button
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
