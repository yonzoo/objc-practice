//
//  Square.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 22.03.2024.
//

#import "Square.h"

@implementation Square
{
	Rectangle2 *rect;
}

- (instancetype) initWithSide: (int) side {
	self = [super init];
	if (self) {
		rect = [[Rectangle2 alloc] initWithWidth:side andHeight:side];
	}
	return self;
}

- (instancetype)init
{
	return [self initWithSide:0];
}

- (void) setSide: (int) s
{
	return [rect setWidth:s andHeight:s];
}

- (int) side
{
	return [rect width];
}

- (int)area
{
	return [rect area];
}

- (int)perimeter
{
	return [rect perimeter];
}

@end
