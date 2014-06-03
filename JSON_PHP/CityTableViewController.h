//
//  CityTableViewController.h
//  JSON_PHP
//
//  Created by Sarah Azad on 5/17/14.
//  Copyright (c) 2014 Dumb Donkey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityTableViewController : UITableViewController
@property (strong,nonatomic) NSMutableArray * jsonArray;
@property (strong,nonatomic) NSMutableArray * cityArray;



-(void) retrieveData;

@end
