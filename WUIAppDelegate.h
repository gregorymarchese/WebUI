//
//  WUIAppDelegate.h
//  WebUI
//
//  Created by Gregory Marchese on 3/12/13.
//  Copyright (c) 2013 zero*gx. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WUIViewController;

@interface WUIAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) WUIViewController *viewController;

@end
