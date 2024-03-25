import 'dart:io';

// Interface
abstract class Animal {
  void makeSound();
}

// Base class
class LivingBeing {
  void breathe() {
    print('Breathing...');
  }
}

// Class implementing an interface
class Dog extends LivingBeing implements Animal {
  @override
  void makeSound() {
    print('Woof woof!');
  }
}

// Subclass with method override
class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}

// Class initialized with data from a file
class Person {
  late String name;
  late int age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  factory Person.fromFile(File file) {
    List<String> data = file.readAsLinesSync();
    return Person(data[0], int.parse(data[1]));
  }

  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

// Method demonstrating the use of a loop
void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Using inheritance
  Dog dog = Dog();
  dog.breathe();
  dog.makeSound(); // Output: Woof woof!

  // Using interface
  Cat cat = Cat();
  cat.makeSound(); // Output: Meow!

  // Initializing object with data from a file
  File file = File('person.txt');
  Person person = Person.fromFile(file);
  person.displayInfo(); // Output: Name: John, Age: 30

  // Using a loop
  printNumbers(5); // Output: 1, 2, 3, 4, 5
}
