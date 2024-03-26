//
//  main.m
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 04.03.2024.
//

#import <Foundation/Foundation.h>
#import "Boat.h"
#import "DegreesConverter.h"
#import "PolynomialEvaluation.h"
#import "ExpressionEvaluation.h"
#import "Complex.h"
#import "Rectangle.h"
#import "Calculator.h"
#import "Triangular.h"
#import "Factorial.h"
#import "DigitsSum.h"
#import "Divisable.h"
#import "DigitsToWords.h"
#import "Fraction.h"
#import "ClassA.h"
#import "ClassB.h"
#import "ClassB2.h"
#import "ClassC.h"
#import "Circle.h"
#import "Rectangle2.h"
#import "Square.h"
#import "Fraction+MathOps.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Classes, objects and methods
        // Exercise 1: Write custom class with 4 methods
//        [Boat test];
        
        // Data types and expressions
        // Exercise 2
//        [DegreesConverter test];
        
        // Exercise 4
//        [PolynomialEvaluation test];
        
        // Exercise 5
//        [ExpressionEvaluation test];
        
        // Exercise 6
//        [Complex test];
        
        // Exercise 7
//        [Rectangle test];
        
        // Exercise 8
//        [Calculator test];
        
        // Program looping
        // Exercise 2
//        [Triangular test];
        
        // Exercise 3
//        [Factorial test];
        
        // Exercise 8
//        [DigitsSum test];
        
        // Decision making
        // Exercise 1
//        [Divisable test];
        
        // Exercise 2
//        [Calculator testWithConditions];
        
        // Exercise 4
//        [Calculator testWithNumberOperatorFormat];
        
        // Exercise 6
//        [DigitsToWords test];
        
        // More on classes
        // Exercise 1
//        [Fraction test];
        
        // Exercise 8
//        [Complex test];
        
        // Inheritance
        // Exercise 1
//        ClassA *a = [[ClassA alloc] init];
//        ClassB *b = [[ClassB alloc] init];
//        ClassC *c = [[ClassC alloc] init];
//        ClassA *bToA = (ClassA*) [[ClassB alloc] init];
//        
//        [a initVar];
//        [a printVar];
//        
//        [b initVar];
//        [b printVar];
//        
//        [c initVar];
//        [c printVar];
//        
//        [bToA initVar];
//        [bToA printVar];
        
        // Exercise 3
//        ClassA *a = [[ClassA alloc] init];
//        ClassB *b = [[ClassB alloc] init];
//        ClassB2 *b2 = [[ClassB2 alloc] init];
//        ClassB *b2ToB = (ClassB*) [[ClassB2 alloc] init];
//
//        [a initVar];
//        [a printVar];
//
//        [b initVar];
//        [b printVar];
//
//        [b2 initVar];
//        [b2 printVar];
//        
//        [b2ToB initVar];
//        [b2ToB printVar];
        
        // Exercise 5
//        Circle *circle = [[Circle alloc] init];
//        [circle setFillColor: 54];
//        NSLog(@"Fill color of circle is: %i", circle.fillColor);
        
        // Exercise 6
//        Rectangle2 *rect = [[Rectangle2 alloc] init];
//        XYPoint *origin = [[XYPoint alloc] init];
//        [origin setX: 0 andY: 0];
//        [rect setOrigin: origin];
//        [rect setWidth: 10 andHeight: 10];
//        
//        XYPoint *point = [[XYPoint alloc] init];
//        [point setX: 3 andY: 5];
//        NSLog(@"Does rectangle contain a point?: Answer is %s", [rect containsPoint: point] ? "yes" : "no");
		
		// Polymorphism, dynamic typing
		// Exercise 3
//		id dataValue;
//		XYPoint *point = [[XYPoint alloc] init];
//		Fraction *f1 = [[Fraction alloc] init]; Complex *c1 = [[Complex alloc] init];
//		[f1 setTo: 2 over: 5];
//		[c1 setReal: 10.0 andImaginary: 2.5];
//		[point setX:1.0 andY:3.0];
//		
//		// first dataValue gets a fraction
//		dataValue = f1;
//		[dataValue print];
//		// now dataValue gets a complex number
//		dataValue = c1;
//		[dataValue print];
//		// now data value gets point
//		dataValue = point;
//		[dataValue print];
		
		// Exercise 4
//		id dataValue1, dataValue2, result;
//		dataValue1 = [[Fraction alloc] init];
//		dataValue2 = [[Fraction alloc] init];
//		[dataValue1 setTo: 2 over: 5];
//		[dataValue2 setTo: 3 over: 4];
//		result = [dataValue1 add: dataValue2];
//		
//		[result print];
//		
//		dataValue1 = [[Complex alloc] init];
//		dataValue2 = [[Complex alloc] init];
//		[dataValue1 setReal:1.0 andImaginary:2.0];
//		[dataValue2 setReal:3.0 andImaginary:4.0];
//		result = [dataValue1 add: dataValue2];
//		
//		[result print];
		
		// More on data types
		// Exercise 2
//		Square *square = [[Square alloc] initWithSide:5];
//		[square draw];
		
		// Exercise 3
//		Fraction *fraction1 = [[Fraction alloc] init];
//		[fraction1 setTo:1 over:5];
//		fraction1 = [fraction1 add:fraction1];
//		fraction1 = [fraction1 add:fraction1];
//		NSLog(@"%i", [Fraction getCounter]);
		
		// Categories and protocols
		// Exercise 5
//		Square* square = [[Square alloc] initWithSide:5];
//		NSLog(@"side of square: %i", [square side]);
//		NSLog(@"area of square: %i", [square area]);
//		NSLog(@"perimeter of square: %i", [square perimeter]);
		
		// Underlying C features
		// Exercise 1
//		double calculateAverage(double values[]);
//		double array[10] = { 5, 5, 5, 3, 4, 5, 6, 7, 8, 9 };
//		NSLog(@"Average is %g", calculateAverage(array));
		
		// Exercise 3
//		generatePrimes(150);
		
		// Exercise 4
//		int n = 3;
//		
//		Fraction* frac1 = [[Fraction alloc] init];
//		Fraction* frac2 = [[Fraction alloc] init];
//		Fraction* frac3 = [[Fraction alloc] init];
//		[frac1 setTo:1 over:5];
//		[frac2 setTo:3 over:5];
//		[frac3 setTo:1 over:5];
//
//		Fraction* fractions[3] = { frac1, frac2, frac3 };
//		[addFractions(fractions, n) print];
		
		// Exercise 5
//		Date today = { .day = 1, .month = 2, .year = 21 };
		
		// Exercise 7
//		char *message = "Programming in Objective-C is fun";
//		char message2[] = "You said it";
//		int x = 100;
//		
//		/*** set 1 ***/
//		NSLog (@"Programming in Objective-C is fun");
//		NSLog (@"%s", "Programming in Objective-C is fun");
//		NSLog (@"%s", message);
//		/*** set 2 ***/
//		NSLog (@"You said it");
//		NSLog (@"%s", message2);
//		NSLog (@"%s", &message2[0]);
//		/*** set 3 ***/
//		NSLog (@"said it");
//		NSLog (@"%s", message2 + 4);
//		NSLog (@"%s", &message2[4]);
		
		// Exercise 8
//		for (int i = 1; i < argc; i++) {
//			NSLog(@"%s", argv[i]);
//		}
		
		// Exercise 9
//		NSLog (@"This is a test");
//		NSLog ("This is a test");
//		NSLog (@"%s", "This is a test");
//		NSLog (@"%s", @"This is a test");
//		NSLog ("%s", "This is a test");
//		NSLog ("%s", @"This is a test");
//		NSLog (@"%@", @"This is a test");
//		NSLog (@"%@", "This is a test");
		
		// Exercise 10
//		int a = 10, b = 5;
//		
//		exchange(&a, &b);
//		
//		NSLog(@"a = %i, b = %i", a, b);
    }
    return 0;
}
