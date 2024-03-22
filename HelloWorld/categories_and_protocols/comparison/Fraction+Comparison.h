//
//  Fraction+Comparison.h
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 22.03.2024.
//

#import "Fraction.h"

@interface Fraction (Comparison)

-(BOOL) isEqualTo: (Fraction *) f;
-(int) compare: (Fraction *) f;

@end
