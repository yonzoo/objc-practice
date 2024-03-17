//
//  Triangle.h
//  HelloWorld
//
//  Created by Дмитрий Назаров on 17.03.2024.
//

#import "GraphicObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface Triangle: GraphicObject

- (void) setSide1: (double) s1 andSide2: (double) s2 andSide3: (double) s3;
- (double) perimeter;
- (double) area;
- (double) side1;
- (double) side2;
- (double) side3;

@end

NS_ASSUME_NONNULL_END
