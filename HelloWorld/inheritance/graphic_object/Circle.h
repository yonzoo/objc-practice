//
//  Circle.h
//  HelloWorld
//
//  Created by Дмитрий Назаров on 17.03.2024.
//

#import "GraphicObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle: GraphicObject

- (void) setRadius: (double) r;
- (double) radius;
- (double) circumference;
- (double) area;

@end

NS_ASSUME_NONNULL_END
