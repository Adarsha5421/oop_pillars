// Base class
class Employee {
  void salary() {
    print("Employee salary is \$1000.");
  }
}

// Subclass representing a Manager
class Manager extends Employee {
  @override
  void salary() {
    print("Manager salary is \$2000.");
  }
}

// Subclass representing a Developer
class Developer extends Employee {
  @override
  void salary() {
    print("Developer salary is \$3000.");
  }
}

void main() {
  // Creating instances of Manager and Developer
  Manager manager = Manager();
  Developer developer = Developer();

  // Calling the overridden methods
  manager.salary(); // Outputs: Manager salary is $2000.
  developer.salary(); // Outputs: Developer salary is $3000.
}