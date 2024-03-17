//
//  Rectangle2.m
//  HelloWorld
//
//  Created by Дмитрий Назаров on 17.03.2024.
//

#import "Rectangle2.h"

@implementation Rectangle2
{
    XYPoint *origin;
}

@synthesize width, height;

- (double)area {
    return width * height;
}

- (double)perimeter {
    return (width + height) * 2;
}

- (void)setOrigin:(nonnull XYPoint *)pt {
    origin = pt;
}

- (nonnull XYPoint *) origin {
    return origin;
}

- (void)setWidth:(double)w andHeight:(double)h {
    
    width = w;
    height = h;
}

- (void)translate:(nonnull XYPoint *)vector {
    origin.x += vector.x;
    origin.y += vector.y;
}

- (BOOL)containsPoint:(nonnull XYPoint *)aPoint {
    return (aPoint.x >= origin.x && aPoint.x <= origin.x + width &&
            aPoint.y >= origin.y && aPoint.y <= origin.y + height) ? YES : NO;
}

- (Rectangle2 *) intersect: (Rectangle2 *) rect
{	
    int xLeft, xRight, yBottom, yTop;
    
    if (origin.x > rect.origin.x) {
        xLeft = origin.x;
    }
    else xLeft = rect.origin.x;
    
    if (origin.x + width < rect.origin.x + rect.width) {
        xRight = origin.x + width;
    }
    else xRight = rect.origin.x + rect.width;
    
    if (origin.y > rect.origin.y) {
        yBottom = origin.y;
    }
    else yBottom = rect.origin.y;
    
    if (origin.y + height < rect.origin.y + rect.height) {
        yTop = origin.y + height;
    }
    else yTop = rect.origin.y + rect.height;
    
    Rectangle2 *r = [[Rectangle2 alloc] init];
    XYPoint *p   = [[XYPoint alloc] init];
    
    if (xLeft <= xRight && yBottom <= yTop) {
        r.width  = xRight - xLeft;
        r.height = yTop - yBottom;
        p.x = xLeft;
        p.y = yBottom;
    }
    else {
        r.width  = 0;
        r.height = 0;
        p.x = 0;
        p.y = 0;
    }
    r.origin = p;
    return r;
}

- (void) draw
{
    for (int i = 0; i < width; i++) printf("-");
    printf("\n");
    for (int i = 0; i < height; i++) {
        printf("|");
        printf("%*c", width - 2, ' ');
        printf("|\n");
    }
    for (int i = 0; i < width; i++) printf("-");
    printf("\n");
}

@end

