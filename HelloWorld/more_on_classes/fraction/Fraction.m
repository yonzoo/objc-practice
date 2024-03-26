//
//  Fraction.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 13.03.2024.
//

#import "Fraction.h"
#import "Fraction+MathOps.h"

static int gCounter = 0;

static int gcd (int u, int v) {
	int temp;
	while ( v != 0) {
		temp = u % v;
		u = v;
		v = temp;
	}
	return u;
}

@interface Fraction (NSComparisonMethods)

- (BOOL)isEqualTo: (id)object;
- (BOOL)isLessThanOrEqualTo: (id)object;
- (BOOL)isLessThan: (id)object;
- (BOOL)isGreaterThanOrEqual: (id)object;
- (BOOL)isGreaterThan: (id)object;
- (BOOL)isNotEqual: (id)object;

@end

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

- (void) reduce
{
	int gcd (int u, int v);
	int divisor = gcd(numerator, denominator);

    numerator /= divisor;
    denominator /= divisor;
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
    result = [fractionA sub: fractionB];
    [result print: false];
    
    // Multiplication
    [fractionA setTo:3 over:4];
    [fractionB setTo:5 over:6];
    
    [fractionA print: false];
    NSLog(@"*");
    [fractionB print: false];
    NSLog(@"=");
    result = [fractionA mul: fractionB];
    [result print: false];
    
    // Division
    [fractionA setTo:7 over:4];
    [fractionB setTo:5 over:16];
    
    [fractionA print: false];
    NSLog(@"/");
    [fractionB print: false];
    NSLog(@"=");
    result = [fractionA div: fractionB];
    [result print: false];
}

@end

@implementation Fraction (NSComparisonMethods)

- (BOOL)isEqualTo: (id)object
{
	if (self.denominator != 0 && [object denominator] != 0)
	{
		double d1 = (double) self.numerator / self.denominator;
		double d2 = (double) [object numerator] / [object denominator];
		return d1 == d2;
	}
	else return NAN;
}

- (BOOL)isLessThanOrEqualTo: (id)object
{
	if (self.denominator != 0 && [object denominator] != 0)
	{
		double d1 = (double) self.numerator / self.denominator;
		double d2 = (double) [object numerator] / [object denominator];
		return d1 <= d2;
	}
	else return NAN;
}

- (BOOL)isLessThan: (id)object
{
	if (self.denominator != 0 && [object denominator] != 0)
	{
		double d1 = (double) self.numerator / self.denominator;
		double d2 = (double) [object numerator] / [object denominator];
		return d1 < d2;
	}
	else return NAN;
}

- (BOOL)isGreaterThanOrEqual: (id)object
{
	if (self.denominator != 0 && [object denominator] != 0)
	{
		double d1 = (double) self.numerator / self.denominator;
		double d2 = (double) [object numerator] / [object denominator];
		return d1 >= d2;
	}
	else return NAN;
}

- (BOOL)isGreaterThan: (id)object
{
	if (self.denominator != 0 && [object denominator] != 0)
	{
		double d1 = (double) self.numerator / self.denominator;
		double d2 = (double) [object numerator] / [object denominator];
		return d1 > d2;
	}
	else return NAN;
}
- (BOOL)isNotEqual: (id)object
{
	if (self.denominator != 0 && [object denominator] != 0)
	{
		double d1 = (double) self.numerator / self.denominator;
		double d2 = (double) [object numerator] / [object denominator];
		return d1 != d2;
	}
	else return NAN;
}

@end
