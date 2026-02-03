enum Color { black, red, brown, white }

class Animal {
  // Перенная класса
  static int _animalsCount = 0;

  static void showAnimalsCount() {
    print('Created ${Animal._animalsCount} animals.');
  }

  static void resetCount() {
    print('Counter is reseted.');
    _animalsCount = 0;
    showAnimalsCount();
  }

  Color color;
  int age;

  Animal(this.color, this.age) {
    _animalsCount++;
  }

  String info() {
    return 'Color: $color Age: $age';
  }
}

class Cat extends Animal {
  Cat(Color color, int age) : super(color, age);

  void meow() {
    print('Cat says meow!');
  }
}

class Parrot extends Animal {
  Parrot(super.color, super.age);

  void fly() {
    print('Parrot is flying...');
  }
}

class Dog extends Animal {
  String breed;

  Dog(this.breed, super.color, super.age);

  // Перезапись, переопределение метода родителя
  @override
  String info() {
    return '${super.info()} Breed: $breed';
  }

  void bark() {
    print('Dog says woof!');
  }
}

class FightingDog extends Dog {
  int wins;

  FightingDog(this.wins, super.breed, super.color, super.age);

  @override
  String info() {
    return '${super.info()} Wins: $wins';
  }

  void fight() {
    print('Fighting...');
  }
}
