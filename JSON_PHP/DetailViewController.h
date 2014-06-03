//
//  DetailViewController.h
//  JSON_PHP
//
//  Created by Sarah Azad on 5/17/14.
//  Copyright (c) 2014 Dumb Donkey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
@interface DetailViewController : UIViewController
@property (strong,nonatomic) IBOutlet UILabel* cityNameLabel;
@property (strong,nonatomic) IBOutlet UILabel* stateLabel;
@property (strong,nonatomic) IBOutlet UILabel* CountryLabel;
@property (strong,nonatomic) IBOutlet UILabel* populationLabel;
@property(strong,nonatomic) City* currentCity;

-(void) getCity: (id) cityObject;


-(void) setLabel;


@end
