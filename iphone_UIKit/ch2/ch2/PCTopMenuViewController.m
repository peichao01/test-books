//
//  PCTopMenuViewController.m
//  ch2
//
//  Created by 裴超 on 14-2-1.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCTopMenuViewController.h"

@interface PCTopMenuViewController ()

@property NSMutableArray* items;

@end

@implementation PCTopMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		_items =  [[NSMutableArray alloc] initWithArray:@[
														  @"PCNavViewController1",
														  @"PCNavViewController2"
														  ]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [_items count];
}

-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"simple-cell"];
	if (!cell) {
		//cell = [[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:@"simple-cell"];
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"simple-cell"];
	}
	cell.textLabel.text = _items[indexPath.row];
	return cell;
}

-(void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	Class class = NSClassFromString(_items[indexPath.row]);
	id viewController = [[class alloc] init];
	if (viewController) {
		[self.navigationController pushViewController:viewController animated:NO];
	}
}

@end
