//
//  FirstViewController.m
//  sceneryapp
//
//  Created by Alex Kroman on 4/16/12.
//  Copyright (c) 2012 OpenSourcery. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize webView;
@synthesize activity;

- (void)dealloc{
    [webView release];
    [super dealloc];
}

- (IBAction)refreshWeb:(id)sender {
    [webView reload];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Browse", @"Browse");
        self.tabBarItem.image = [UIImage imageNamed:@"eye"];
    }
    return self;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [activity stopAnimating];  
}

- (void)webViewDidStartLoad:(UIWebView *)webView { 
    [activity startAnimating];  

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear: animated];
    [webView reload];
}

- (void)viewDidLoad
{
    NSURL *url = [NSURL URLWithString:@"http://sceneryweb.herokuapp.com/posts"];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestURL];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return interfaceOrientation == UIInterfaceOrientationPortrait;
}

@end
