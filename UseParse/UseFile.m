//
//  UseFile.m
//  UseParse
//
//  Created by Galileo Guzman on 14/02/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import "UseFile.h"
#import <Parse/Parse.h>

UIImage *image;

@interface UseFile ()

@end

@implementation UseFile

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) imagePickerController:(UIImagePickerController *) picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    image = info[UIImagePickerControllerEditedImage];
    
    self.imgImageSelected.image = image;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)btnSelectImageSender:(id)sender {
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    imagePicker.delegate = self;
    imagePicker.allowsEditing = YES;
    
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:imagePicker animated:YES completion:NULL];
}

- (IBAction)btnUploadSender:(id)sender {
    
    NSData *imageData = UIImagePNGRepresentation(image);
    PFFile *imageFile = [PFFile fileWithName:@"juanito.png" data:imageData];
    
    PFObject *instagram = [PFObject objectWithClassName:@"Instagram"];
    instagram[@"image"] = imageFile;
    instagram[@"description"] = self.txtDescription.text;
    
    [instagram saveInBackground];
    
}
@end
