//
//  AppDelegate.m
//  LGBTQ Marriage App
//
//  Created by Leonardo Azopardo on 11/17/14.
//  Copyright (c) 2014 Leonardo Azopardo. All rights reserved.
//

#import "AppDelegate.h"
#import "SWRevealViewController.h"
#import "RightViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main1"
                                                             bundle: nil];
    
    self.controller = (SWRevealViewController *)[mainStoryboard
                                                       instantiateViewControllerWithIdentifier: @"revealController"];
    
    RightViewController *rightViewController = rightViewController = [[RightViewController alloc] init];
    
    self.controller.rightViewController = rightViewController;
    
    self.window.rootViewController = self.controller;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
