//
//  Triangular.m
//  HelloWorld
//
//  Created by Дмитрий Назаров on 12.03.2024.
//

#import "Triangular.h"

@implementation Triangular

+ (void)test {
    
    for (int n = 5; n <= 50; n += 5) {
        int triangularNumber = n * (n + 1) / 2;
        NSLog(@"%2i     %4i", n, triangularNumber);
    }
}

@end
