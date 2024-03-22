//
//  Calculator+Trig.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 22.03.2024.
//

#import "Calculator+Trig.h"

@implementation Calculator (Trig)

- (double)cos {
	return cos(self.accumulator);
}

- (double)sin {
	return sin(self.accumulator);
}

- (double)tan {
	return tan(self.accumulator);
}

@end
