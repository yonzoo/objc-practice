//
//  Circle.m
//  HelloWorld
//
//  Created by Дмитрий Назаров on 17.03.2024.
//

#import "Circle.h"
#include "math.h"

@implementation Circle
{
    double radius;
}

- (double)circumference {
    return 2 * M_PI * radius;
}

- (double)area {
    return M_PI * pow(radius, 2);
}

- (double)radius {
    return radius;
}

- (void)setRadius:(double)r {
    radius = r;
}

@end
