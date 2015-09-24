//
//  ProfileViewController.m
//  SlideMenu
//
//  Created by Aryan Gh on 4/24/13.
//  Copyright (c) 2013 Aryan Ghassemi. All rights reserved.
//

#import "ProfileViewController.h"
#import <QuartzCore/QuartzCore.h>
@implementation ProfileViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.photoImageView.layer.cornerRadius = 48;
    self.photoImageView.clipsToBounds = YES;
    self.photoImageView.image = [UIImage imageNamed:@"photo.jpeg"];
    
    
    
    self.nameLabel.text = @"Nik";
    self.lastNameLabel.text = @"Shebeda";
    
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

@end
