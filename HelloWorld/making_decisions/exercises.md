#  Exercises

> **Exercise 1:** Write a program that asks the user to type in two integer values. Test these two numbers to determine whether the first is evenly divisible by the second and then display an appropriate message at the terminal.

See [Divisable](./program_looping/divisable)

> **Exercise 2:** Program 6.8A displays the value in the accumulator even if an invalid operator is entered or division by zero is attempted. Fix that problem.

See [Calculator](./data_types_and_expressions/calculator)

> **Exercise 3:** Modify the print method from the Fraction class so that whole numbers are displayed as such (so the fraction 5/1 should display as simply 5). Also modify the method to display fractions with a numerator of 0 as simply zero.

```objc
- (void) print
{
    if (denominator == 1) {
        NSLog(@"%i", numerator,);
    }
    else if (numerator == 0) {
        NSLog("0");
    }
    else NSLog(@"%i/%i", numerator, denominator);
}
```

> **Exercise 4:** Write a program that acts as a simple printing calculator. The program should allow the user to type in expressions of the following form:
>
>     number operator
>
> The program should recognize the following operators:
>
>     +     -> addition
>     -     -> subtraction
>     *     -> multiplication
>     /     -> division
>     S     -> set the accumulator
>     E     -> end execution
>
> The arithmetic operators are performed on the contents of the accumulator, with the number that was keyed in acting as the second operand.

See [Calculator](./data_types_and_expressions/calculator)

> **Exercise 5:** We developed Program 5.9 to reverse the digits of an integer typed in from the terminal. However, this program does not function well if you type in a negative number. Find out what happens in such a case, and then modify the program so that negative numbers are correctly handled. By this, we mean that if the number -8645 were typed in, for example, the output of the program should be 5468-.

```objc
        int number, right_digit;
        bool isNegative = false;
        NSLog (@"Enter your number."); scanf ("%i", &number);
        if (number < 0) {
            isNegative = true;
            number *= -1;
        }
        do {
            right_digit = number % 10;
            NSLog (@"%i", right_digit);
            number /= 10;
        }
        while ( number != 0 );
        if (isNegative) {
            NSLog (@"-");
        }
```

> **Exercise 6:** Write a program that takes an integer keyed in from the terminal and extracts and displays each digit of the integer in English. So if the user types in 932, the program should display the following:
>
> nine
> three
> two

See [DigitsToWords](./making_decisions/digits_to_words)

> **Exercise 7:** Program 6.10 has several inefficiencies. One inefficiency results from checking even numbers. Because any even number greater than 2 obviously cannot be prime, the program could simply skip all even numbers as possible primes and as possible divisors. The inner for loop is also inefficient because the value of p is always divided by all values of d from 2 through p–1. You can avoid this inefficiency if you add a test for the value of isPrime in the conditions of the for loop. In this manner, you can set up the for loop to continue as long as no divisor is found and the value of d is less than p. Modify Program 6.10 to incorporate these two changes; then run the program to verify its operation.

```objc
int p, d, isPrime;
for ( p = 2; p <= 50; ++p ) {
    // skip all even numbers > 2
    if (p % 2 == 0 && p > 2) continue; 
    isPrime = 1;
    for ( d = 2; d < p; ++d ) 
        if ( p % d == 0 )
        isPrime = 0;
        break;
    if ( isPrime != 0 )
        NSLog (@"%i ", p);
}
```
