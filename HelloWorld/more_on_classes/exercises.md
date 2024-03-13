#  Exercises

> **Exercise 1:** Add the following methods to the `Fraction` class to round out the arithmetic operations on fractions.

```objc
- (Fraction *) subtract: (Fraction *) f;
- (Fraction *) multiply: (Fraction *) f;
- (Fraction *) divide: (Fraction *) f;
```
See [Fraction](./more_on_classes/fraction)

> **Exercise 2:** Modify the print method from your Fraction class so that it takes an additional BOOL argument that indicates whether the fraction should be reduced for display. If it is to be reduced (that is if the argument is YES), be sure not to make any permanent changes to the fraction itself.

See [Fraction](./more_on_classes/fraction)

> **Exercise 3:** Will your Fraction class work with negative fractions? For example, can you add -1/4 and –1/2 and get the correct result? When you think you have the answer, write a test program to try it.

Yes, the Fraction class will work with negative numbers. But, due to how we calculate the result of the addition, subtraction, multiplication, and division to two fractions, the negative number will always be carried in the denominator.

> **Exercise 4:** Modify the Fraction’s print method to display fractions greater than 1 as mixed numbers. For example, the fraction 5/3 should be displayed as 1 2/3.

See [Fraction](./more_on_classes/fraction)

> **Exercise 5:** Remove the @synthesize directive from Program 7.2 and modify the program to handle the new names given to the instance variables by the compiler.

Removing the @synthesize directive tells the compiler to automatically insert an underscore _ before the name of the instance variable(s). You would just need to modify all references to these variables in the implementation section.

> **Exercise 6:** in Chapter 4, “Data Types and Expressions,” defined a new class called Complex for working with complex imaginary numbers. Add a new method called add: that can be used to add two complex numbers. To add two complex numbers, you simply add the real parts and the imaginary parts, as shown here:
```(5.3 + 7i) + (2.7 + 4i) = 8 + 11i```

See [Complex](./data_types_and_expressions/complex)

> **Exercise 7:** Given the Complex class developed in exercise 6 of Chapter 4 and the extension made in exercise 6 of this chapter, create separate Complex.h and Complex.m interface and implementation files. Create a separate test program file to test everything.

Files are separated inito Complex.h and Complex.m. See [Complex](./data_types_and_expressions/complex)
