//
//  VenueViewController.m
//  LGBTQ Marriage App
//
//  Created by Leonardo Azopardo on 11/18/14.
//  Copyright (c) 2014 Leonardo Azopardo. All rights reserved.
//

#import "VenueViewController.h"

#import "SWRevealViewController.h"

@interface VenueViewController ()

@end

@implementation VenueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _barBut.target = self.revealViewController;
    _barBut.action = @selector(revealToggle:);
    
    _budgetBut.target = [self revealViewController];
    _budgetBut.action = @selector(rightRevealToggle:);
    
    self.navigationItem.rightBarButtonItem = _budgetBut;
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"BG2_01.png"] drawInRect:self.view.bounds];
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
}

@end
