//
//  HomeViewController.h
//  SlideMenu
//
//  Created by Aryan Gh on 4/24/13.
//  Copyright (c) 2013 Aryan Ghassemi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"

@interface HomeViewController : UIViewController <SlideNavigationControllerDelegate>

@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UISearchBar *searchMealSearchBar;

- (IBAction)bounceMenu:(id)sender;
- (IBAction)slideOutAnimationSwitchChanged:(id)sender;
- (IBAction)limitPanGestureSwitchChanged:(id)sender;

@end
