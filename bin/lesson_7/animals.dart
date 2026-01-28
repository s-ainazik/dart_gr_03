import 'dart:ffi';
import 'mixins.dart';
import 'interfaces.dart';

// Можно наследовать.
// Может содержать готовые методы.
// Может иметь абстрактные методы, которые наследник обязан реализовать.
abstract class Animal implements Drawable {
  String name;
  int age;

  Animal(this.name, this.age);

  void sleep() {
    print('$name is sleeping.');
  }

  void makeSound(); // абстрактный метод, без реализации
}

class Cat extends Animal with Jump implements Playable {
  Cat(super.name, super.age);

  @override
  void makeSound() {
    print('$name says meow!');
  }

  @override
  void play() {
    print('$name is playing with laser.');
  }

  @override
  void draw() {
    print('🐈');
  }

  @override
  String draw3D(String material) {
    return '3D cat model made of $material';
  }
}

abstract class Reptile extends Animal {
  Reptile(super.name, super.age);

  void crawl() {
    print('Reptile $name is crawling.');
  }
}

class Snake extends Reptile {
  Snake(super.name, super.age);

  @override
  void makeSound() {
    print('$name hisses.');
  }

  @override
  void draw() {
    print('🐍');
  }

  @override
  String draw3D(String material) {
    return '3D snake model made of $material';
  }
}

class Parrot extends Animal with Fly, Jump implements Playable {
  Parrot(super.name, super.age);

  @override
  void makeSound() {
    print('$name says chirp.');
  }

  @override
  void draw() {
    print('🦜');
  }

  @override
  String draw3D(String material) {
    return '3D parrot model made of $material';
  }
  
  @override
  void play() {
    print('$name is playing by mimicking sounds.');
  }
}
