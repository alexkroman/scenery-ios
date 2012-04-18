//
//  FirstViewController.h
//  sceneryapp
//
//  Created by Alex Kroman on 4/16/12.
//  Copyright (c) 2012 OpenSourcery. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UIWebViewDelegate> {
    UIWebView *webView;
}

@property(nonatomic, retain) IBOutlet UIWebView *webView;

@end