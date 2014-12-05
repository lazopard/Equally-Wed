//
//  ViewController.m
//  LGBTQ Marriage App
//
//  Created by Leonardo Azopardo on 11/17/14.
//  Copyright (c) 2014 Leonardo Azopardo. All rights reserved.
//

#import "ChecklistViewController.h"

#import "SWRevealViewController.h"

@interface ChecklistViewController ()

@end

@implementation ChecklistViewController

- (void)highlightButton:(UIButton *)b {
    if (b.isHighlighted == YES)
        [b setHighlighted:NO];
    else
        [b setHighlighted:YES];
}

- (IBAction)onTouchup:(UIButton *)sender {
    [self performSelector:@selector(highlightButton:) withObject:sender afterDelay:0.0];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _barBut.target = self.revealViewController;
    _barBut.action = @selector(revealToggle:);
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"BG7_01.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
