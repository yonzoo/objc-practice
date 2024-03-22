//
//  Fraction+Comparison.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 22.03.2024.
//

#import "Fraction+Comparison.h"

@implementation Fraction (Comparison)

- (BOOL)isEqualTo:(Fraction *)f {
	[f reduce];
	[self reduce];
	return f.numerator == self.numerator && f.denominator == self.denominator;
}

- (int)compare:(Fraction *)f {
	double d1 = self.numerator / self.denominator;
	double d2 = f.numerator / f.denominator;
	if (d1 > d2) {
		return 1;
	} else if (d1 < d2) {
		return -1;
	} else {
		return 0;
	}
}

@end
