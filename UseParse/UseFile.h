//
//  UseFile.h
//  UseParse
//
//  Created by Galileo Guzman on 14/02/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UseFile : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imgImageSelected;
@property (strong, nonatomic) IBOutlet UITextField *txtDescription;
- (IBAction)btnSelectImageSender:(id)sender;

- (IBAction)btnUploadSender:(id)sender;

@end
