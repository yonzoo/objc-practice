//
//  Fraction.h
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 13.03.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction: NSObject

@property int numerator, denominator;

- (void) print: (bool) mustReduce;
- (void) print;
- (double) convertToNum;
- (void) setTo: (int) n over: (int) d;
- (void) reduce;

+(int) getCounter;
+(void) incrementCounter;
+(void) test;

@end

NS_ASSUME_NONNULL_END
