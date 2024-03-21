#  Exercises

> **Exercise 1:** What will happen if you insert the message expression 
> ```[compResult reduce];```
> into Program 9.1 after the addition is performed? Try it and see.

Compilation error: "No visible @interface for 'Fraction' declares the selector 'reduce'"

> **Exercise 2:** Can the id variable dataValue, as defined in Program 9.2, be assigned a Rectangle object as you defined it in Chapter 8

Yes, this statement is valid and no warnings or compilation errors will be produced. You will run into trouble if you try to apply methods to dataValue that have not been defined for Rectangle instances — this would also not be caught at compilation, as the compiler has no idea what will be stored in dataValue, even though it is hard-coded into the program.

> **Exercise 3:** Add a print method to your XYPoint class defined in Chapter 8. Have it display the point in the format (x, y). Then modify Program 9.2 to incorporate an XYPoint object. Have the modified program create an XYPoint object, set its value, assign it to the id variable dataValue, and then display its value.

```objc
	id dataValue;
	XYPoint *point = [[XYPoint alloc] init];
	Fraction *f1 = [[Fraction alloc] init]; Complex *c1 = [[Complex alloc] init];
	[f1 setTo: 2 over: 5];
	[c1 setReal: 10.0 andImaginary: 2.5];
	[point setX:1.0 andY:3.0];
	
	// first dataValue gets a fraction
	dataValue = f1;
	[dataValue print];
	// now dataValue gets a complex number
	dataValue = c1;
	[dataValue print];
	// now data value gets point
	dataValue = point;
	[dataValue print];
```

> **Exercise 4:** Based on the discussions about argument and return types in this chapter, modify both add: methods in the Fraction and Complex classes to take and return id objects. Then write a program that incorporates the following code sequence:
> ```result = [dataValue1 add: dataValue2]; [result print];```
> Here, ```result```, ```dataValue1```, and ```dataValue2``` are id objects. Make sure that you set dataValue1 and dataValue2 appropriately in your program.

See [Fraction](../more_on_classes/fraction) and [Rectangle2](../data_types_and_expressions/complex)

> **Exercise 5:** Given the Fraction and Complex class definitions you have been using in this text and the following definitions
```objc
Fraction *fraction = [[Fraction alloc] init]; 
Complex *complex = [[Complex alloc] init]; 
id number = [[Complex alloc] init]; 
```
determine the return value from the following message expressions. Then type them into a program to verify the results.

```objc
	Fraction *fraction = [[Fraction alloc] init];
	Complex *complex = [[Complex alloc] init];
	id number = [[Complex alloc] init];
	NSLog(@"%s", [fraction isMemberOfClass: [Complex class]] ? "Yes" : "No"); // No
	NSLog(@"%s", [complex isMemberOfClass: [NSObject class]] ? "Yes" : "No"); // No
	NSLog(@"%s", [complex isKindOfClass: [NSObject class]] ? "Yes" : "No"); // Yes
	NSLog(@"%s", [fraction isKindOfClass: [Fraction class]] ? "Yes" : "No"); // Yes
	NSLog(@"%s", [fraction respondsToSelector: @selector (print)] ? "Yes" : "No"); // Yes
	NSLog(@"%s", [Fraction instancesRespondToSelector: @selector (print)] ? "Yes" : "No"); // Yes
	NSLog(@"%s", [number respondsToSelector: @selector (print)] ? "Yes" : "No"); // Yes
	NSLog(@"%s", [number isKindOfClass: [Complex class]] ? "Yes" : "No"); // Yes
	NSLog(@"%s", [[number class] respondsToSelector: @selector (alloc)] ? "Yes" : "No"); // Yes
```
