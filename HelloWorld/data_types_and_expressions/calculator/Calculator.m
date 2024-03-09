//
//  Calculator.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 09.03.2024.
//

#import "Calculator.h"

@implementation Calculator
{
    double accumulator;
    double memory;
}

-(void) setAccumulator: (double) value
{
    accumulator = value;
}

-(void) clear {
    accumulator = 0;
}
-(double) accumulator {
    return accumulator;
}

-(double) add: (double) value {
    accumulator += value;
    return accumulator;
}

-(double) subtract: (double) value {
    accumulator -= value;
    return accumulator;
}

-(double) multiply: (double) value {
    accumulator *= value;
    return accumulator;
}

-(double) divide: (double) value {
    accumulator /= value;
    return accumulator;
}

-(double)changeSign {
    accumulator = -1 * accumulator;
    return accumulator;
}

-(double)reciprocal {
    accumulator = 1 / accumulator;
    return accumulator;
}

-(double)xSquared {
    accumulator *= accumulator;
    return accumulator;
}

-(double)memoryAdd: (double) value {
    memory += value;
    accumulator = memory;
    return accumulator;
}

-(double)memoryClear {
    memory = 0;
    return accumulator;
}

-(double)memoryRecall {
    accumulator = memory;
    return accumulator;
}

-(double)memoryStore {
    memory = accumulator;
    return accumulator;
}

-(double)memorySubtract: (double) value {
    memory -= value;
    accumulator = memory;
    return accumulator;
}

+(void)test {
    Calculator *deskCalc = [[Calculator alloc] init];
    [deskCalc setAccumulator: 100.0];
    NSLog (@"The result after add is %g", [deskCalc add:10]);
    NSLog (@"The result after substract is %g", [deskCalc subtract:10]);
    NSLog (@"The result after multiply is %g", [deskCalc multiply:10]);
    NSLog (@"The result after divide is %g", [deskCalc divide:10]);
    NSLog (@"The result after changing sign is %g", [deskCalc changeSign]);
    NSLog (@"The result after reciprocal is %g", [deskCalc reciprocal]);
    NSLog (@"The result after squaring is %g", [deskCalc xSquared]);
    NSLog(@"The result after clearing memory = %g", [deskCalc memoryClear]);
    NSLog(@"The result after storing %g in memory = %g", [deskCalc accumulator], [deskCalc memoryClear]);
    NSLog(@"The result after recalling memory = %g", [deskCalc memoryRecall]);
    NSLog(@"The result after add 20 to memory = %g", [deskCalc memoryAdd: 20]);
    NSLog(@"The result after subtract 11 from memory = %g", [deskCalc memorySubtract: 11]);
}

@end

