//
//  CityTableViewController.m
//  JSON_PHP
//
//  Created by Sarah Azad on 5/17/14.
//  Copyright (c) 2014 Dumb Donkey. All rights reserved.
//

#import "CityTableViewController.h"
#import "City.h"
#import "DetailViewController.h"

#define getURL @"http://www.conkave.com/iosdemos/json.php"


@interface CityTableViewController ()

@end

@implementation CityTableViewController

@synthesize jsonArray;
@synthesize cityArray;
-(void) retrieveData
{
    
    NSData *data= [NSData dataWithContentsOfURL:[NSURL URLWithString:getURL]];
   
    
    jsonArray= [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
 
    
    cityArray= [[NSMutableArray alloc]init];
    

    
    for (int i=0; i< jsonArray.count; i++)
    {
      
        NSString *cID= [[jsonArray objectAtIndex:i] objectForKey:@"id"];
       
         NSString *cName= [[jsonArray objectAtIndex:i] objectForKey:@"cityName"];
        
         NSString *cState= [[jsonArray objectAtIndex:i] objectForKey:@"cityState"];
        
         NSString *cCountry= [[jsonArray objectAtIndex:i] objectForKey:@"Country"];
        
         NSString *cPopulation= [[jsonArray objectAtIndex:i] objectForKey:@"cityPopulation"];
        
     
        
        [cityArray addObject:[[City alloc] initWithCityID:cID cityName:cName cityState:cState cityPopulation: cPopulation cityCountry: cCountry]];
        
 }
   
    
    [self.tableView reloadData];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   self.title=@"Cities of the world";
    
    [self retrieveData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return cityArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* cellIdentifier=@"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    City * cityObject=[cityArray objectAtIndex:indexPath.row];
    cell.textLabel.text= cityObject.cityName;
    
   //accessory type
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    
    if ([[segue identifier] isEqualToString:@"pushedDetailedView"]) {
        NSIndexPath *indexPath= [self.tableView indexPathForSelectedRow];
        
        //get the object fot the sellected row
        
        
        City* object = [cityArray objectAtIndex:indexPath.row];
        [[segue destinationViewController ] getCity:object];
    }
}


@end
