//
//  PCAppDelegate.h
//  ch2
//
//  Created by 裴超 on 14-1-31.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(strong,nonatomic)UILabel* label1;
@property(strong,nonatomic)UILabel* label2;
@property(strong,nonatomic)UIButton* button1;
//@property(weak,nonatomic)NSInteger* switcher;
@property int switcher;
@end
