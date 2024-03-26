#  Exercises

> **Exercise 1:** Write a function that calculates the average of an array of 10 floating-point values and
returns the result.

```objc
double calculateAverage(double values[]) {
	int i = 0;
	double sum = 0;
	while (i < 10) {
		sum += values[i];
		i++;
	}
	return sum / i;
}
```
> **Exercise 2:** The reduce method from your Fraction class finds the greatest common divisor of the numerator and denominator to reduce the fraction. Modify that method so that it uses the gcd function from Program 13.5 instead. Where do you think you should place
the function definition? Are there any benefits to making the function static? Which approach do you think is better, using a gcd function or incorporating the code directly into the method as you did previously? Why?

See [Fraction](../more_on_classes/fraction/)

> **Exercise 3:** Write a function that calculates the average of an array of 10 floating-point values and
returns the result.

An algorithm known as the Sieve of Erastosthenes can generate prime numbers. The algorithm for this procedure is presented here. Write a program that implements this algorithm. Have the program find all prime numbers up to n = 150. What can you say about this algorithm as compared to the ones used in the text for calculating prime numbers?

Step 1: We create a list of all numbers from 2 to 100.  
Step 2: According to the algorithm we will mark all the numbers which are divisible by 2 and are greater than or equal to the square of it. 
Step 3: Now we move to our next unmarked number 3 and mark all the numbers which are multiples of 3 and are greater than or equal to the square of it.  .

```objc
void generatePrimes(int n) {
	// Create a boolean array "prime[0..n]" and initialize
	// all entries it as true. A value in prime[i] will
	// finally be false if i is Not a prime, else true.
	bool prime[n + 1];
	memset(prime, true, sizeof(prime));
	for (int i = 2; i * i < n; i++) {
		// If prime[p] is not changed, then it is a prime
		if (prime[i] == true) {
			// Update all multiples of p greater than or
			// equal to the square of it numbers which are
			// multiple of p and are less than p^2 are
			// already been marked.
		  for (int j = i * i; j <= n; j += i)
			  prime[j] = false;
		}
	}
	// Print all prime numbers
	for (int p = 2; p <= n; p++)
		if (prime[p])
			printf("%i ", p);
}
```
> **Exercise 4:** Write a function to add all the Fractions passed to it in an array and to return the result as a Fraction.

```objc
Fraction *addFractions(__strong Fraction* fractions[], int n) {
	Fraction *result = [[Fraction alloc] init];
	[result setTo:0 over:1];
	for (int i = 0; i < n; i++) {
		result = [result add:fractions[i]];
	}
	return result;
}
```

> **Exercise 5:** Write a typedef definition for a struct date called Date that enables you to make declarations such as
> `Date todaysDate;`
> in your program.

```objc
typedef Date = struct date { int month; int day; int year; } ;

Date today = { .day = 1, .month = 2, .year = 21 };
```

> **Exercise 6:** As noted in the text, defining a Date class instead of a date structure is more consistent with the notion of object-oriented programming. Define such a class with appropriate setter and getter methods. Also add a method called dateUpdate to return the day after its argument.
Do you see any advantages of defining a Date as a class instead of as a structure? Do you see any disadvantages?

The advantage is that you can add methods and logic to class, the disadvantage is boiler plate code.

> **Exercise 7:** Given the following definitions
```objc
char *message = "Programming in Objective-C is fun";
char message2[] = "You said it";
int x = 100;
```
determine whether each NSLog call from the following sets is valid and produces the same output as other calls from the set.
```objc
/*** set 1 ***/
NSLog (@"Programming in Objective-C is fun");
NSLog (@"%s", "Programming in Objective-C is fun"); NSLog (@"%s", message);
/*** set 2 ***/
NSLog (@"You said it"); NSLog (@"%s", message2); NSLog (@"%s", &message2[0]);
/*** set 3 ***/
NSLog (@"said it");
NSLog (@"%s", message2 + 4); NSLog (@"%s", &message2[4]);
```

Yes, all sets are valid:
```
Programming in Objective-C is fun
Programming in Objective-C is fun
Programming in Objective-C is fun
You said it
You said it
You said it
said it
said it
said it
```

> **Exercise 8:** Write a program that prints all its command-line arguments, one per line at the terminal. Notice the effect of enclosing arguments that contain space characters inside quotation marks.

When arguments are enclosed in quotation mark, we have spacing and if not then it's truncated.

```objc
for (int i = 1; i < argc; i++) {
	NSLog(@"%s", argv[i]);
}
```

> **Exercise 9:** Which of the following statements produce the output `This is a test`? Explain.
```objc
NSLog (@"This is a test"); // valid
NSLog ("This is a test"); // invalid, c-string in objective-c function that accepts NSString
NSLog (@"%s", "This is a test"); // invalid, c-string in objective-c function that accepts NSString
NSLog (@"%s", @"This is a test"); // warning, result is gubberish, format specifies c-string, but the argument is NSString
NSLog ("%s", "This is a test"); NSLog ("%s", @"This is a test"); // valid
NSLog (@"%@", @"This is a test"); NSLog (@"%@", "This is a test"); // invalid, BAD ACCESS
```

> **Exercise 10:** Rewrite the exchange function from Program 13.14 as a block and test it.

```objc
void (^exchange) (int *, int *) =
	^(int *pint1, int *pint2) {
		int temp;
		temp = *pint1;
		*pint1 = *pint2;
		*pint2 = temp;
	};

```
