// Base class (Parent class)
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  // Method to display basic information
  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }

  // Method that can be overridden
  void makeSound() {
    print("$name makes a sound.");
  }
}

// Subclass (Child class) inheriting from Animal
class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  // Overriding the makeSound method
  @override
  void makeSound() {
    print("$name barks.");
  }

  // Additional method specific to Dog
  void fetch() {
    print("$name is fetching the ball!");
  }
}

// Another subclass inheriting from Animal
class Cat extends Animal {
  String color;

  Cat(String name, int age, this.color) : super(name, age);

  // Overriding the makeSound method
  @override
  void makeSound() {
    print("$name meows.");
  }

  // Additional method specific to Cat
  void scratch() {
    print("$name is scratching!");
  }
}

void main() {
  // Creating an object of the Dog class
  Dog dog = Dog("Buddy", 3, "Golden Retriever");
  dog.displayInfo();
  dog.makeSound();
  dog.fetch();

  print(""); // Adding a space between outputs

  // Creating an object of the Cat class
  Cat cat = Cat("Whiskers", 2, "Gray");
  cat.displayInfo();
  cat.makeSound();
  cat.scratch();
}