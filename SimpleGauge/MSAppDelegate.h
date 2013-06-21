//
//  PBAppDelegate.h
//  SimpleGauge
//
//  Created by Mike Sabatini on 1/9/13.
//  Copyright (c) 2013 Mike Sabatini. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PBViewController;

@interface MSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) PBViewController *viewController;

@end
