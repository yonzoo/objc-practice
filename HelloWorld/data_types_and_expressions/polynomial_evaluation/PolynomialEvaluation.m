//
//  PolynomialEvaluation.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 09.03.2024.
//

#import "PolynomialEvaluation.h"

@implementation PolynomialEvaluation

-(float) evaluate: (float) value;
{
    return 3 * value * value * value - 5 * value * value + 6;
}

+(void) test
{
    NSLog(@"The evaluated value for 2.55 is %f", [[PolynomialEvaluation new] evaluate:2.55]);
}

@end
