//
//  Rectangle2.h
//  HelloWorld
//
//  Created by Дмитрий Назаров on 17.03.2024.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"
#import "XYPoint.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle2: GraphicObject

@property double width, height;

-(XYPoint *) origin;

-(void) translate: (XYPoint *) vector;

-(void) setOrigin: (XYPoint *) pt;

-(void) setWidth: (double) w andHeight: (double) h;

-(double) area;

-(double) perimeter;

-(BOOL) containsPoint: (XYPoint *) aPoint;

-(Rectangle2 *) intersect: (Rectangle2 *) rect;

-(void) draw;

@end

NS_ASSUME_NONNULL_END
