//
//  RightViewController.h
//  SWRevealSample
//
//  Created by DilumNavanjana on 31/3/14.
//  Copyright (c) 2014 DilumNavanjana. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

@interface RightViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *numberTextFields;

@end
