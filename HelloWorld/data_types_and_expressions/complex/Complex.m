//
//  Complex.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 09.03.2024.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void)print {
    NSLog(@"%f + %fi", real, imaginary);
}

-(id) add: (id) value;
{
    double resultReal = real + [value real];
    double resultImaginary = imaginary + [value imaginary];
    id number = [[Complex alloc] init];
    [number setReal:resultReal];
    [number setImaginary:resultImaginary];
    return number;
}

- (void)setReal:(double)a andImaginary:(double)b {
	real = a;
	imaginary = b;
}

+(void)test {
    Complex *number = [[Complex alloc] init];
    
    [number setReal: 101.00];
    [number setImaginary: 45.00];
    [number print];
    
    // Addition
    Complex *otherNumber = [[Complex alloc] init];
    [otherNumber setReal: 10.00];
    [otherNumber setImaginary: 4.00];
    [otherNumber print];

    [[number add:otherNumber] print];
}

@end
