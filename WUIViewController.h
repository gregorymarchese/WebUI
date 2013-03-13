//
//  WUIViewController.h
//  WebUI
//
//  Created by Gregory Marchese on 3/12/13.
//  Copyright (c) 2013 zero*gx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WUIViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutletCollection(UIWebView) NSArray *ss;

@end
