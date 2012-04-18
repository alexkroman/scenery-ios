//
//  SecondViewController.h
//  sceneryapp
//
//  Created by Alex Kroman on 4/16/12.
//  Copyright (c) 2012 OpenSourcery. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MobileCoreServices/MobileCoreServices.h>

#import "AFNetworking.h"

@interface SecondViewController : UIViewController
<UIImagePickerControllerDelegate, 
UINavigationControllerDelegate>
{
    UIImageView *imageView;
    BOOL newMedia;
}

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)useCamera;
- (IBAction)useCameraRoll;
@end
