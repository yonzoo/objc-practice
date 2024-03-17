#  Exercises

> **Exercise 1:** Modify Program 8.1 to add a new class called ClassB2 that, like ClassB, is a subclass of ClassA.
> What can you say about the relationship between ClassB and ClassB2?
> Identify the hierarchical relationship between the NSObject class, ClassA, ClassB, and
> ClassB2.
> What is the superclass of ClassB?
> What is the superclass of ClassB2?
> How many subclasses can a class have, and how many superclasses can it have?

See [ABCInheritance](./inheritance/abc)

> **Exercise 2:** When dealing with higher-resolution devices, you might need to use a coordinate system that enables you to specify points as floating-point values instead of as simple integers. (iOS uses a structure called CGRect for working with rectangles. All coordinates and sizes are expressed as floating point numbers when working with such rectangles.) Modify the XYPoint and Rectangle classes from this chapter to deal with floating-point numbers. The rectangle’s width, height, area, and perimeter should all work with floating-point numbers as well.

See [XYPoint](./inheritance/floating_points) and [Rectangle2](./inheritance/floating_points)

> **Exercise 3:** Modify program 8.1 to add a new class `ClassB2` that, like `ClassB`, is a subclass of `ClassA`. What can you say about the relationship between `ClassB` and `ClassB2`?

`ClassB` and `ClassB2` are siblings — they both have the same *parent*.

> Identify the relationship between the `NSObject` class, `ClassA`, `ClassB`, and `ClassB2`.

```
       NSObject
           |
           |
        ClassA
           |
           |
   -----------------
   |               |
   |               |
ClassB          ClassB2
```

> **Exercise 4:** Write a Rectangle method called translate: that takes an XYPoint object as
its argument. Have it translate the rectangle’s origin by the specified vector. Note: Translation simply means moving the point from one place to another.

See [Rectangle2](./inheritance/floating_points)

> **Exercise 5:** Define a new class called GraphicObject, and make it a subclass of NSObject. Define instance variables in your new class as follows:
> int fillColor; BOOL filled; int lineColor;
> // 32-bit color
> // Is the object filled? // 32-bit line color
> Write methods to set and retrieve the variables defined previously. Make the Rectangle class a subclass of GraphicObject.
> Define new classes, Circle and Triangle, which are also subclasses of GraphicObject. Write methods to set and retrieve the various parameters for these objects and also to calculate the circle’s circumference and area, and the triangle’s perimeter and area.

See [GraphicObject](./inheritance/graphic_object), [Circle](./inheritance/graphic_object), [Triangle](./inheritance/graphic_object)

> **Exercise 6:** Write a Rectangle method called containsPoint: that takes an XYPoint object as its argument:
-(BOOL) containsPoint: (XYPoint *) aPoint;
Have the method return the BOOL value YES if the rectangle encloses the specified point
and NO if it does not.

See [Rectangle2](./inheritance/floating_points)

> **Exercise 7:** Write a Rectangle method called intersect: that takes a rectangle as an argument and returns a rectangle representing the overlapping area between the two rectangles. For example, given the two rectangles shown in Figure 8.10, the method should return a rectangle whose origin is at (400, 420), whose width is 50, and whose height is 60.

See [Rectangle2](./inheritance/floating_points)

> **Exercise 8:** Write a method for the Rectangle class called draw that draws a rectangle using dashes and vertical bar characters.
