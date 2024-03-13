//
//  Complex.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 09.03.2024.
//

#import "Complex.h"

@implementation Complex
{
    double imaginary;
    double real;
}

-(double)real {
    return real;
}

-(double)imaginary {
    return imaginary;
}

-(void)print {
    NSLog(@"%f + %fi", real, imaginary);
}

-(void)setImaginary: (double) b {
    imaginary = b;
}

-(void)setReal :(double) a {
    real = a;
}

-(nonnull Complex *) add: (nonnull Complex *) value {
    double resultReal = real + value.real;
    double resultImaginary = imaginary + value.imaginary;
    Complex *number = [[Complex alloc] init];
    [number setReal:resultReal];
    [number setImaginary:resultImaginary];
    return number;
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
