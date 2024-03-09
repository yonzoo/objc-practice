//
//  DegreesConverter.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 09.03.2024.
//

#import "DegreesConverter.h"

@implementation DegreesConverter

-(float) convert: (float) fahrengeit;
{
    float celcius;
    celcius = (fahrengeit - 32) / 1.8;
    return celcius;
}

+(void) test
{
    float fahrengeit;
    fahrengeit = 27;
    
    NSLog(@"%f degrees in Fahrengeit equals %f degrees in Celcius", fahrengeit, [[DegreesConverter new] convert:fahrengeit]);
}

@end
