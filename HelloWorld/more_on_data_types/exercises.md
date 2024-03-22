#  Exercises

> **Exercise 1:** Using the Rectangle class from Chapter 8, “Inheritance,” add an initializer method according to the following declaration. (Note: Be sure to override init to use this initializer.)
> ```-(id) initWithWidth: (int) w andHeight: (int) h;```

```objc
- (id) initWithWidth: (int) w andHeight: (int) h
{
	self = [super init];
	
	if (self) {
		[self setWidth: w andHeight: h];
	}
	return self;
}
```

> **Exercise 2:** Add an initializer to the Square class from Chapter 8 to be in accordance with the initializer from the above exercise and the following declaration:
> ```- (id) initWithSide: (int) side;```
```objc
- (id) initWithSide: (int) side
{
    self = [super initWithWidth: side andHeight: side];
    return self;
}
```

> **Exercise 3:** Add a counter to the Fraction class's add: method to count the number of times it is invoked. How can you retrieve the value of the counter?

See [Fraction](../inheritance/graphic_object/Square.m)

This is done with using the static methods to set and retrieve value of ```gCounter```

> **Exercise 4:** Using typedef and enumerated data types, define a type called Day with the possible
values Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, and Saturday.

```objc
typedef enum { Monday=1, Tuesday, Wednesaday, Thursday, Friday, Saturday, Sunday } Day
```

> **Exercise 5:** Using typedef, define a type FractionObj that enables you to write statements such as the following:

```objc
FractionObj f1 = [[Fraction alloc] init], f2 = [[Fraction alloc] init];
```
To define a new type name with typedef, follow this procedure:
1. Write the statement as if a variable of the desired type were being declared.
2. Where the name of the declared variable would normally appear, substitute the new type name.
3. In front of everything, place the keyword typedef.

```objc
typedef Fraction *FractionObj;
```

> **Exercise 6:** Based on the following definitions:
>
>     float f     = 1.00;
>     short int i = 100;
>     long int l  = 500L;
>     double d    = 15.00;
>
> and the order of precedence for conversion of operands in expressions, determine the type and value of the following:

The following summarizes the order in which conversions take place in the evaluation of two operands in an expression:
1. If either operand is of type long double, the other is converted to long double, and that is the type of the result.
2. If either operand is of type double, the other is converted to double, and that is the type of the result.
3. If either operand is of type float, the other is converted to float, and that is the type of the result.
4. If either operand is of type _Bool, char, short int, or bitfield, or of an enumerated data type, it is converted to int.
5. If either operand is of type long long int, the other is converted to long long int, and that is the type of the result.
6. If either operand is of type long int, the other is converted to long int, and that is the type of the result.
7. If this step is reached, both operands are of type int, and that is the type of the result.

```objc
f + i               // (float) 101.000
l / d               // (double) 33.333333
i / l + f           // (float) 1.000000
l * i               // (long int) 50000
f / 2               // (float) 0.5000000
i / (d + f)         // (double) 6.25000000
l / (i * 2.0)       // (float) 2.5000000
l + i / (double) l  // (double) 500.2000000
```
