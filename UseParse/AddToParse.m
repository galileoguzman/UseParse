//
//  ViewController.m
//  UseParse
//
//  Created by Galileo Guzman on 13/02/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import "AddToParse.h"

#import <parse/parse.h>

NSMutableArray *Lugares;

@interface AddToParse ()

@end

@implementation AddToParse

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Lugares = [[NSMutableArray alloc] init];
    
    PFQuery *query = [PFQuery queryWithClassName:@"bar"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error){
        for (id obj in objects){
            [Lugares addObject:obj];
        }
    }];
    
    NSLog(@"Rows : %d", (int)[Lugares count]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnEnviar:(id)sender {
    
    //Creamos un Objecto heredando los atributos de un Class Object previamente creado en el Dashboard de Parse dot com
    PFObject *testObject = [PFObject objectWithClassName:@"bar"];
    
    //Seteamos los atributos del objeto de acuerdo a los campos(columnas) que estan en el Dashboard de Parse dot com
    //Los valores los tomamos de los campos de texto del ViewController
    
    testObject[@"name"] = self.txtNombre.text;
    testObject[@"latitude"] = self.txtLatitude.text;
    testObject[@"longitude"] = self.txtLongitude.text;
    testObject[@"description"] = self.txtDescripcion.text;
    if([testObject saveInBackground]){
        NSLog(@"Agregado correctamente");
    }
    
}
@end
