//
//  Square.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 22.03.2024.
//

#import "Square.h"

@implementation Square

- (nonnull id)initWithSide:(int)side {
	self = [super initWithWidth:side andHeight:side];
	return self;
}

@end
