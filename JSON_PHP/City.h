//
//  City.h
//  JSON_PHP
//
//  Created by Sarah Azad on 5/17/14.
//  Copyright (c) 2014 Dumb Donkey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject
@property (strong,nonatomic) NSString* cityID;
@property (strong,nonatomic) NSString* cityName;
@property (strong,nonatomic) NSString* cityState;
@property (strong,nonatomic) NSString* cityPopulation;
@property (strong,nonatomic) NSString* cityCountry;


-(id) initWithCityID: (NSString*) cID cityName:(NSString*) cName cityState:(NSString*) cState cityPopulation:(NSString*) cPopulation cityCountry:(NSString*) cCountry;

@end
