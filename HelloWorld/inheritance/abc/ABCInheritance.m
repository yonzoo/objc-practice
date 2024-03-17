//
//  ABCInheritance.m
//  HelloWorld
//
//  Created by Дмитрий Назаров on 17.03.2024.
//

#import "ClassA.h"
#import "ClassB.h"
#import "ClassC.h"
#import "ClassB2.h"

@implementation ClassA

- (void) initVar
{
    x = 100;
}

- (void) printVar
{
    NSLog(@"x = %i", x);
}

@end

@implementation ClassB

- (void) printVar
{
    NSLog(@"x = %i", x);
}

- (void) initVar
{
    x = 200;
}

@end

@implementation ClassB2

- (void) printVar
{
    NSLog(@"x = %i", x);
}

- (void) initVar
{
    x = 222;
}

@end

@implementation ClassC

- (void) printVar {
    NSLog(@"x = %i", x);
}

- (void) initVar {
    x = 300;
}

@end
