//
//  Boat.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 09.03.2024.
//

#import "Boat.h"

@implementation Boat
{
    int licenseNumber;
    int deckCount;
    NSString *captainName;
}

-(void) print
{
    NSLog(@"The license number is %i.\n The deck count is %i.\n The captain's name is %@.", licenseNumber, deckCount, captainName);
}

-(void) setLicenseNumber: (int) number
{
    licenseNumber = number;
}

-(void) setDeckCount: (int) count
{
    deckCount = count;
}

-(void) setCaptainName: (NSString*) name
{
    captainName = name;
}

-(void) horn
{
    NSLog(@"HOOOOOOOORN");
}

+(void) test
{
    Boat *boat;
    
    boat = [Boat alloc];
    boat = [boat init];
    
    [boat setLicenseNumber: 1];
    [boat setDeckCount: 3];
    [boat setCaptainName: @"Johnathan"];
    [boat horn];
    
    [boat print];
}

@end
