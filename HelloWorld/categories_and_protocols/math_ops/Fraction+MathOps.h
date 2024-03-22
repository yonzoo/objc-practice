//
//  Fraction+MathOps.h
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 22.03.2024.
//

#import "Fraction.h"

@interface Fraction (MathOps)

-(Fraction *) add: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
-(Fraction *) invert;

@end
