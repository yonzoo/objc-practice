//
//  GraphicObject.h
//  HelloWorld
//
//  Created by Дмитрий Назаров on 17.03.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GraphicObject: NSObject

- (void) setFillColor: (int) c;
- (void) setFilled: (BOOL) f;
- (void) setLineColor: (int) c;
- (int)  fillColor;
- (BOOL) filled;
- (int)  lineColor;

@end

NS_ASSUME_NONNULL_END
