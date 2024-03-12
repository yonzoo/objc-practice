#  Exercises

> **Exercise 1:** Write a program to generate a display a table of n and n2, for integer values of n ranging from 1 to 10. Be sure to print the appropriate column headings.

```objc
NSLog(@"For n -- 1 to 10");
NSLog(@"----------------");
NSLog(@" n           2n ");
NSLog(@"----------------");
for (int n = 1; n <= 10; n++) {
    NSLog (@"%-2i           %-2i", n, n * 2);
}
```

> Write a program that generates a table of triangular numbers using the previous formula. Have the program generate every fifth triangular number between 5 and 50 (i.e: 5, 10, 15, ... , 50).
```triangularNumber = n * (n + 1) / 2```

See [Triangular](./program_looping/triangular_number)

> **Exercise 3:** The factorial of an integer n, written n!, is the product of the consecutive integers 1 through n. For example, 5 factorial is calculated as follows:
```5! = 5 x 4 x 3 x 2 x 1 = 120```
> Write a program to generate and print a table of the first 10 factorials.

See [Triangular](./program_looping/factorial)

> **Exercise 4:** A minus sign placed in front of a field width specification causes the field to be displayed left-justified. Substitute the following NSLog statement for the corresponding statement in Program 5.3, run the program, and compare the outputs produced by both programs:
```NSLog (@"%-2i %i", n, triangularNumber);```

This will be left justified instead of default right justification

> **Exercise 5:** Program 5.5 allows the user to type in only five different numbers. Modify that program so that the user can type in the number of triangular numbers to be calculated.

```objc
NSLog(@"Enter how many triangular numbers to be calculated.");
scanf("%i", &counter);
```
To achieve that program needs just to have counter scanned and written to variable

> **Exercise 6:** In programs 5.2 through 5.5, replace all uses of the for statement with equivalent while statements. Run each program to verify that both versions are identical.

The original loop in program 5.2:
```objc
for (n = 1; n <= 200; n = n + 1) triangularNumber += n;
```

Updated with while loop:
```objc
n = 1
while (n <= 200) {
    triangularNumber += n++;
}
```

The original loop in program 5.5:
```objc
for (counter = 1; counter <= 5; ++n)
{
    // statements
    for (n = 1; n <= number; ++n) {
        triangularNumber += n;
    }
}
```

Updated with while loop:
```objc
counter = 1
while (counter <= 5) {
    n = 1;
    while (n <= number) {
        triangularNumber += n;
    }
    counter++;
}
```

> **Exercise 7:** What would happen if you were to type a negative number into Program 5.8? Try it and see.

Prints every digit with minus sign

> **Exercise 8:** Write a program that calculates the sum of the digits of an integer. For example, the sum of the digits of the number 2155 is 2 + 1 + 5 + 5, or 13. The program should accept any arbitrary integer the user types.

See [DigitsSum](./program_looping/digits_sum)



