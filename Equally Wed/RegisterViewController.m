//
//  RegisterViewController.m
//  Equally Wed
//
//  Created by Leonardo Azopardo on 12/6/14.
//  Copyright (c) 2014 Leonardo Azopardo. All rights reserved.
//

#import "RegisterViewController.h"

#import "SWRevealViewController.h"

@interface RegistryViewController ()

@end

@implementation RegistryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _barBut.target = self.revealViewController;
    _barBut.action = @selector(revealToggle:);
    
    _budgetBut.target = [self revealViewController];
    _budgetBut.action = @selector(rightRevealToggle:);
    
    self.navigationItem.rightBarButtonItem = _budgetBut;
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"BG6_02.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (IBAction)openWeddingRegistry:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.amazon.com/registry/wishlist/2SSRD1PL0Y6W6"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
