//
//  ViewController.h
//  UseParse
//
//  Created by Galileo Guzman on 13/02/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <parse/Parse.h>

@interface AddToParse : UIViewController

- (IBAction)btnEnviar:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *txtNombre;

@property (strong, nonatomic) IBOutlet UITextField *txtDescripcion;
@property (strong, nonatomic) IBOutlet UITextField *txtLatitude;
@property (strong, nonatomic) IBOutlet UITextField *txtLongitude;

@end

