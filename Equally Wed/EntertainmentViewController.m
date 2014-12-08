//
//  EntertainmentViewController.m
//  Equally Wed
//
//  Created by Leonardo Azopardo on 12/6/14.
//  Copyright (c) 2014 Leonardo Azopardo. All rights reserved.
//

#import "EntertainmentViewController.h"

#import "SWRevealViewController.h"

@interface EntertainmentViewController ()

@end

@implementation EntertainmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _barBut.target = self.revealViewController;
    _barBut.action = @selector(revealToggle:);
    
    _budgetBut.target = [self revealViewController];
    _budgetBut.action = @selector(rightRevealToggle:);
    
    self.navigationItem.rightBarButtonItem = _budgetBut;
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"BG3_01.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (IBAction)dismissKeyboard:(UITextField *)textField{
    [textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
