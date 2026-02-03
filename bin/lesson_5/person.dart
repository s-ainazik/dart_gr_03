class Person {
  int _age;
  final String _name;

  Person(this._age, this._name) {
    _wasBorn();
  }

  void _wasBorn() {
    print('Person $_name was born');
  }

  // Сеттер для возраста с проверкой
  set age(int value) {
    if (value < 0) {
      print("Age cannot be negative.");
    } else {
      _age = value;
    }
  }

  // Геттеры для возраста и имени

  get age {
    return _age;
  }

  get name {
    return _name;
  }

  int calculateBirthYear() {
    return 2026 - _age;
  }

  void introduceYourself() {
    print(
      "Hello, my name is $_age and I am $_age years old. I was born in ${calculateBirthYear()}.",
    );
  }
}
