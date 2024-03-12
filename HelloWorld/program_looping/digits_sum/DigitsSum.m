//
//  DigitsSum.m
//  HelloWorld
//
//  Created by Дмитрий Назаров on 12.03.2024.
//

#import "DigitsSum.h"

@implementation DigitsSum

- (int) countDigitsSum: (int) n {
    int sum = 0, rightDigit;
    do {
        rightDigit = n % 10;
        sum += rightDigit;
        n /= 10;
    } while (n != 0);
    return sum;
}

+ (void) test {
    int number;
    NSLog(@"Please enter number:");
    scanf("%i", &number);
    DigitsSum* digitsSum = [[DigitsSum alloc] init];
    NSLog(@"The sum is: %i", [digitsSum countDigitsSum: number]);
}

@end
