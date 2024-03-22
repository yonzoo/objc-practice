//
//  Square.h
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 22.03.2024.
//

#import "Rectangle2.h"

NS_ASSUME_NONNULL_BEGIN

@interface Square: NSObject

-(instancetype) initWithSide: (int) side;
-(void) setSide: (int) s;
-(int) side;
-(int) area;
-(int) perimeter;

@end

NS_ASSUME_NONNULL_END
