//
//  RegisterViewController.h
//  Equally Wed
//
//  Created by Leonardo Azopardo on 12/6/14.
//  Copyright (c) 2014 Leonardo Azopardo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistryViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *barBut;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *budgetBut;

- (IBAction)openWeddingRegistry:(id)sender;

@end
