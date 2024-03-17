//
//  Triangle.m
//  HelloWorld
//
//  Created by Дмитрий Назаров on 17.03.2024.
//

#import "Triangle.h"
#include "math.h"

@implementation Triangle
{
    double side1, side2, side3;
}

- (double)area {
    double semi = [self perimeter] / 2;
    return sqrt(semi * (semi - side1) * (semi - side2) * (semi - side3));
}

- (double)perimeter {
    return side1 + side2 + side3;
}

- (void)setSide1:(double)s1 andSide2:(double)s2 andSide3:(double)s3 {
    side1 = s1;
    side2 = s2;
    side3 = s3;
}

- (double)side1 {
    return side1;
}

- (double)side2 {
    return side2;
}

- (double)side3 {
    return side3;
}

@end
