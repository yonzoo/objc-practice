//
//  Fraction.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 13.03.2024.
//

#import "Fraction.h"

static int gCounter = 0;

@implementation Fraction

@synthesize numerator, denominator;

- (void) print {
	[self print: true];
}

- (void) print : (bool) mustReduce
{
    if (mustReduce) {
        Fraction* fraction = [[Fraction alloc] init];
        fraction.numerator = numerator;
        fraction.denominator = denominator;
        [fraction reduce];
        int whole = fraction.numerator / fraction.denominator;
        int remain = fraction.numerator % fraction.denominator;
        if (fraction.numerator > fraction.denominator) {
            if (remain != 0) {
                NSLog(@"%i %i/%i", whole, remain, fraction.denominator);
            }
            else NSLog(@"%i", whole);
        } else {
            NSLog(@"%i/%i", fraction.numerator, fraction.denominator);
        }
    } else {
        int whole = numerator / denominator;
        int remain = numerator % denominator;
        if (numerator > denominator) {
            if (remain != 0) {
                NSLog(@"%i %i/%i", whole, remain, denominator);
            }
            else NSLog(@"%i", whole);
        } else {
            NSLog(@"%i/%i", numerator, denominator);
        }
    }
}

- (double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator / denominator;
    }
    else return NAN;
}

- (void) setTo: (int) n over: (int) d
{
    numerator   = n;
    denominator = d;
}

- (id) add: (id) f;
{
    id result = [[Fraction alloc] init];
    
	[result setTo:numerator * [f denominator] + denominator * [f numerator] over:denominator * [f denominator]];
    [result reduce];
	[Fraction incrementCounter];
    return result;
}

- (Fraction *) subtract: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator   = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

- (Fraction *) multiply: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator   = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

- (Fraction *) divide: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator   = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    [result reduce];
    return result;
}

- (void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

+ (int) getCounter {
	extern int gCounter;
	return gCounter;
}

+ (void)incrementCounter {
	extern int gCounter;
	gCounter++;
}

+ (void)test {
    
    Fraction *fractionA = [[Fraction alloc] init];
    Fraction *fractionB = [[Fraction alloc] init];
    Fraction *result;
    
    // Addition
    [fractionA setTo:4 over:4];
    [fractionB setTo:4 over:4];
    
    [fractionA print: false];
    NSLog(@"+");
    [fractionB print: false];
    NSLog(@"=");
    result = [fractionA add: fractionB];
    [result print: false];
    
    // Substraction
    [fractionA setTo:1 over:3];
    [fractionB setTo:6 over:81];
    
    [fractionA print: false];
    NSLog(@"-");
    [fractionB print: false];
    NSLog(@"=");
    result = [fractionA subtract: fractionB];
    [result print: false];
    
    // Multiplication
    [fractionA setTo:3 over:4];
    [fractionB setTo:5 over:6];
    
    [fractionA print: false];
    NSLog(@"*");
    [fractionB print: false];
    NSLog(@"=");
    result = [fractionA multiply: fractionB];
    [result print: false];
    
    // Division
    [fractionA setTo:7 over:4];
    [fractionB setTo:5 over:16];
    
    [fractionA print: false];
    NSLog(@"/");
    [fractionB print: false];
    NSLog(@"=");
    result = [fractionA divide: fractionB];
    [result print: false];
}

@end
