//
//  HomeViewController.m
//  SlideMenu
//
//  Created by Aryan Gh on 4/24/13.
//  Copyright (c) 2013 Aryan Ghassemi. All rights reserved.
//

#import "HomeViewController.h"
#import "LeftMenuViewController.h"

@implementation HomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, 503);
	


}

#pragma mark - SlideNavigationController Methods -

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
	return YES;
}

- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
	return NO;
}

#pragma mark - IBActions -

- (IBAction)bounceMenu:(id)sender
{
	static Menu menu = MenuLeft;
	
	[[SlideNavigationController sharedInstance] bounceMenu:menu withCompletion:nil];
	
	menu = (menu == MenuLeft) ? MenuRight : MenuLeft;
}

- (IBAction)slideOutAnimationSwitchChanged:(UISwitch *)sender
{
	((LeftMenuViewController *)[SlideNavigationController sharedInstance].leftMenu).slideOutAnimationEnabled = sender.isOn;
}

- (IBAction)limitPanGestureSwitchChanged:(UISwitch *)sender
{
	[SlideNavigationController sharedInstance].panGestureSideOffset = (sender.isOn) ? 50 : 0;
}

@end
