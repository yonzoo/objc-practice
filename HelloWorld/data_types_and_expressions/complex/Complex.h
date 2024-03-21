//
//  Complex.h
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 09.03.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Complex: NSObject

@property double real, imaginary;

-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) setReal: (double) a andImaginary: (double) b;
-(void) print;
-(double) real;
-(double) imaginary;
-(id) add: (id) value;
+(void) test;

@end

NS_ASSUME_NONNULL_END
