//
//  City.m
//  JSON_PHP
//
//  Created by Sarah Azad on 5/17/14.
//  Copyright (c) 2014 Dumb Donkey. All rights reserved.
//

#import "City.h"

@implementation City

@synthesize cityID;
@synthesize cityName;
@synthesize cityState;
@synthesize cityPopulation;
@synthesize cityCountry;


-(id) initWithCityID: (NSString*) cID cityName:(NSString*) cName cityState:(NSString*) cState cityPopulation:(NSString*) cPopulation cityCountry:(NSString*) cCountry
{
    self= [super init];
    if (self) {
        
        cityID=cID;
        cityName=cName;
        cityState=cState;
        cityPopulation=cPopulation;
        cityCountry=cCountry;
    }
    
    
    return self;
}

@end
