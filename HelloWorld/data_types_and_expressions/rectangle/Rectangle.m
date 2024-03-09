//
//  Rectangle.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 09.03.2024.
//

#import "Rectangle.h"

@implementation Rectangle
{
    int width;
    int height;
}


- (int) area {
    return width * height;
}

- (int) height {
    return height;
}


- (int) width {
    return width;
}

- (int) perimeter {
    return width * 2 + height * 2;
}

- (void) setHeight: (int) h {
    height = h;
}

- (void) setWidth: (int) w {
    width = w;
}

+ (void) test {
    Rectangle *rectangle = [[Rectangle alloc] init];
    [rectangle setHeight: 10];
    [rectangle setWidth: 20];
    NSLog(@"Rectangle's area is %i", [rectangle area]);
    NSLog(@"Rectangle's perimeter is %i", [rectangle perimeter]);
}

@end
