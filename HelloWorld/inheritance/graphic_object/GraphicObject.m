//
//  GraphicObject.m
//  HelloWorld
//
//  Created by Дмитрий Назаров on 17.03.2024.
//

#import "GraphicObject.h"

@implementation GraphicObject
{
    int fillColor;
    BOOL filled;
    int lineColor;
}

- (void) setFillColor: (int) c
{
    fillColor = c;
}

- (void) setFilled: (BOOL) f
{
    filled = f;
}

- (void) setLineColor: (int) c
{
    lineColor = c;
}

- (int)  fillColor
{
    return fillColor;
}

- (BOOL) filled
{
    return filled;
}

- (int)  lineColor
{
    return lineColor;
}

@end
