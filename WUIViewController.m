//
//  WUIViewController.m
//  WebUI
//
//  Created by Gregory Marchese on 3/12/13.
//  Copyright (c) 2013 zero*gx. All rights reserved.
//

#import "WUIViewController.h"
#import "WCAlertView.h"
#import "YRDropdownView.h"

@interface WUIViewController ()

@end

@implementation WUIViewController
@synthesize webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIColor *BGColor = [UIColor colorWithRed:(51/255) green:(51/255) blue:(51/255) alpha:1.0];
    [webView setBackgroundColor: BGColor];
    [WCAlertView showAlertWithTitle:@"zero*gx WebUI" message:@"enter web address" customizationBlock:^(WCAlertView *alertView)
    {
        
        alertView.style = WCAlertViewStyleWhite;
        alertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    }
    completionBlock:^(NSUInteger buttonIndex, WCAlertView *alertView)
    {
        if (buttonIndex == alertView.cancelButtonIndex)
        {
            NSString *urlAddress = [alertView textFieldAtIndex:0].text;
            
            //Create a URL object.
            NSURL *url = [NSURL URLWithString:urlAddress];
            
            //URL Requst Object
            NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
            
            //Load the request in the UIWebView.
            [webView loadRequest:requestObj];
            
            
        }
        else
        {
            //false
        }
    } cancelButtonTitle:@"go" otherButtonTitles: nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) viewDidDisappear:(BOOL)animated
{
    
}

@end
