//
//  XYPoint.m
//  HelloWorld
//
//  Created by Дмитрий Назаров on 17.03.2024.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

- (void)setX:(double)xVal andY:(double)yVal {
    
    self.x = xVal;
    self.y = yVal;
}

- (void) print {
	NSLog(@"(%g, %g)", x, y);
}

@end
