//
//  DetailViewController.m
//  JSON_PHP
//
//  Created by Sarah Azad on 5/17/14.
//  Copyright (c) 2014 Dumb Donkey. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize cityNameLabel;
@synthesize stateLabel;
@synthesize CountryLabel;
@synthesize populationLabel;
@synthesize currentCity;




-(void) getCity: (id) cityObject
{
   
    currentCity= cityObject;
}

-(void) setLabel
{
    cityNameLabel.text=[currentCity cityName];
    stateLabel.text=[currentCity cityState];
    CountryLabel.text= [currentCity cityCountry];
    populationLabel.text=[currentCity cityPopulation];


}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
