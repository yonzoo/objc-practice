//
//  ExpressionEvaluation.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 09.03.2024.
//

#import "ExpressionEvaluation.h"

@implementation ExpressionEvaluation

-(float) evaluate;
{
    double num = 3.31e-8 + 2.01e-7;
    double denom = 7.16e-6 + 2.01e-8;
    return num / denom;
}

+(void) test
{
    NSLog(@"The evaluated value is %f", [[ExpressionEvaluation new] evaluate]);
}

@end

