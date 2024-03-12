//
//  Factorial.m
//  HelloWorld
//
//  Created by Дмитрий Назаров on 12.03.2024.
//

#import "Factorial.h"

@implementation Factorial

- (int) factorial: (int) n {
    if (n == 1) {
        return n;
    }
    return n * [self factorial: n - 1];
}

+ (void) test {
    
    Factorial* factorial = [[Factorial alloc] init];
    NSLog(@"Table of the first 10 factorials");
    for (int n = 1; n <= 10; n++) {
        int result = [factorial factorial:n];
        NSLog(@"%-2i      %-8i", n, result);
    }
}

@end
