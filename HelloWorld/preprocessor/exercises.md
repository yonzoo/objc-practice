#  Exercises

> **Exercise 2:** Define a macro called MIN that gives the minimum of two values. Then write a program to test the macro definition.

```objc
#define MIN(a,b) ( ((a) < (b)) > (a) : (b) )
```
> **Exercise 3:** Define a macro called MAX3 that gives the maximum of three values. Write a program to test the definition.

```objc
#define MAX(x,y,z) (((x) > (y)) && ((x) > (z)) ? (x) : ((y) > (z)) ? (y) : (z))
```
> **Exercise 4:** Write a macro IS_UPPER_CASE that gives a nonzero value if a character is an uppercase letter.

```objc
#define IS_UPPER_CASE(x) ( ((x) >= 'A') && ((x) <= 'Z') )
```

> **Exercise 5:** Write a macro called IS_ALPHABETIC that gives a nonzero value if a character is an alphabetic character.

```objc
#define IS_ALPHABETIC(x) ( (IS_UPPER_CASE((x)) || IS_LOWER_CASE((x))) )
```

> **Exercise 6:** Write a macro IS_DIGIT that gives a nonzero value if a character is a digit 0 through 9.

```objc
#define IS_DIGIT(x) ( ((x) >= '0') && ((x) <= '9') )
```

> **Exercise 7:** Write a macro called ABSOLUTE_VALUE that computes the absolute value of its argument.

```objc
#define ABSOLUTE_VALUE(x) ( ((x) < 0) ? -(x) : (x) )
```


