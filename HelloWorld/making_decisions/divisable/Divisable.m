//
//  Divisable.m
//  HelloWorld
//
//  Created by Дмитрий Назаров on 12.03.2024.
//

#import "Divisable.h"

@implementation Divisable

- (BOOL) isDivisibleWithA: (int) a andB : (int) b {
    if (a % b == 0)
        return YES;
    return NO;
}

+ (void)test {
    int a, b;
    scanf("%i %i", &a, &b);
    if ([[Divisable new] isDivisibleWithA:a andB:b]) {
        NSLog(@"%i is divisible by %i", a, b);
    } else {
        NSLog(@"%i is NOT divisible by %i", a, b);
    }
}

@end
