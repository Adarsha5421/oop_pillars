// Abstract class representing a generic shape
abstract class Shape {
  // Abstract method to calculate area
  double calculateArea();
  // Abstract method to calculate perimeter
  double calculatePerimeter();

  // Non abstract method with shared functionality
  void display() {
    print("Shape Properties:");
  }
}

// Subclass representing a Circle
class Circle extends Shape {
  double radius;
  Circle(this.radius);

  // Implementing abstract methods
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14 * radius;
  }
}

// Subclass representing a Rectangle
class Rectangle extends Shape {
  double width;
  double height;
  Rectangle(this.width, this.height);

// Implementing abstract methods
  @override
  double calculateArea() {
    return height * width;
  }

  @override
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // Creating objects of Circle and Rectangle
  Shape circle = Circle(5.0);
  Shape rectangle = Rectangle(4.0, 6.0);

  // Using the abstract methods through the interface
  circle.display();
  print("Circle Area: ${circle.calculateArea()}");
  print("Circle Perimeter: ${circle.calculatePerimeter()}");

  rectangle.display();
  print("Rectangle Area: ${rectangle.calculateArea()}");
  print("Rectangle Perimeter: ${rectangle.calculatePerimeter()}");
}