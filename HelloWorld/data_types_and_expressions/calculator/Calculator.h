//
//  Calculator.h
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 09.03.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator: NSObject

// accumulator methods
-(void) setAccumulator: (double) value; -(void) clear;
-(double) accumulator;

// arithmetic methods
-(double) addValue: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;
-(double) changeSign; // change sign of accumulator
-(double) reciprocal; // 1/accumulator
-(double) xSquared; // accumulator squared
-(double) memoryClear; // clear memory
-(double) memoryStore; // set memory to accumulator
-(double) memoryRecall; // set accumulator to memory
-(double) memoryAdd: (double) value; // add value into memory
-(double) memorySubtract: (double) value; // subtract value from memory
+(void) test;
+(void) testWithConditions;
+(void) testWithNumberOperatorFormat;

@end

NS_ASSUME_NONNULL_END
