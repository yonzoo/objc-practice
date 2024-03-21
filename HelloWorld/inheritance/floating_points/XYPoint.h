//
//  XYPoint.h
//  HelloWorld
//
//  Created by Дмитрий Назаров on 17.03.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYPoint: NSObject

@property double x, y;

-(void) setX: (double) xVal andY: (double) yVal;

-(void) print;

@end

NS_ASSUME_NONNULL_END
