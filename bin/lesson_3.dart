import 'dart:io';

void main() {
  for (var i = 1; i <= 5; i = i + 1) {
    print('Step $i');
  }

  print('-------------------');
  int number = 7;
  for (var i = 1; i <= 10; i++) // increment: i = i + 1 => i++
  {
    print('$number x $i = ${number * i}');
  }

  print('-------------------');
  number = 5;
  for (var i = 10; i >= 1; i--) // decrement: i = i - 1 => i--
  {
    print('$number x $i = ${number * i}');
  }
  print('-------------------');
  number = 9;
  for (var i = 10; i > 2; i = i - 2) // i = i - 2 => i -= 2
  {
    print('$number x $i = ${number * i}');
  }

  print('-------------------');
  int count = 0;
  while (count <= 5) {
    print('Count is: $count');
    count++;
    print('Square is: ${count * count}');
  }

  var myStr = '#';
  while (myStr.length <= 7) {
    print(myStr);
    myStr += '#';
  }

  int doCount = 0;
  do {
    print('Do-While Count is: $doCount');
    doCount++;
  } while (doCount > 5);

  doCount = 0;
  while (doCount > 5) {
    print('While Count is: $doCount');
    doCount++;
  }

  for (var i = 1; i <= 5; i++) {
    if (i == 3) {
      break;
    }
    print('Number: $i');
  }

  // while (true) {
  //   print('Enter a number (0 to exit): ');
  //   String input = stdin.readLineSync()!;
  //   int num = int.parse(input);
  //   if (num == 0) {
  //     break;
  //   }
  //   print('You entered: $num. This number in 3rd degree is ${num * num * num}');
  // }

  // Коллекции List - список
  // упорядоченная коллекция элементов, доступ по индексу, может содержать дубликаты, изменяемый размер
  print('  ------------------- Список -------------------  ');
  List<String> fruits = ['Apple', 'Banana', 'Orange', 'Grapes'];
  print('I loves to eat ${fruits[0]} and ${fruits[2]}');
  print(fruits);
  fruits[3] = 'Mango';
  print(fruits);
  // fruits[10] = 'Pineapple'; // добавление элемента по индексу 10
  // print(fruits);
  fruits.add('Pineapple'); // добавление элемента в конец списка
  print(fruits);
  fruits.insert(1, 'Strawberry'); // добавление элемента по индексу 1
  print(fruits);
  fruits.removeAt(2); // удаление элемента по индексу 2
  print(fruits);
  fruits.removeLast(); // удаление последнего элемента
  print(fruits);
  fruits.remove('Orange'); // удаление элемента по значению
  print(fruits);
  if (fruits.contains('Grapes')) {
    print('Grapes is in the list');
  } else {
    print('Grapes is not in the list');
  }
  fruits.contains('Banana')
      ? print('Yes, Banana is in the list')
      : print('No, Banana is not in the list'); // тернарный оператор

  fruits.add('Apple');
  print(fruits);
  print('Fruits list length is: ${fruits.length}');

  // Коллекции Map - словарь
  // неупорядоченная коллекция пар ключ-значение, ключи уникальны
  print('  ------------------- Словарь -------------------  ');
  Map<String, int> ages = {'Alice': 25, 'Bob': 30, 'Charlie': 35};
  print(ages);
  print('Alice is ${ages['Alice']} years old');
  ages['Bob'] = 31; // изменение значения по ключу
  print(ages);
  ages['David'] = 28; // добавление новой пары ключ-значение
  print(ages);
  ages.remove('Charlie'); // удаление пары по ключу
  print(ages);
  if (ages.containsKey('David')) {
    print('David is in the map');
  } else {
    print('David is not in the map');
  }
  print('Map length is: ${ages.length}');

  // Итерация по парам ключ-значение
  ages.forEach((key, value) {
    print('$key is $value years old.');
  });

  Map<String, String> capitals = {
    'US': 'Washington, D.C.',
    'FR': 'Paris',
    'JP': 'Tokyo',
  };
  print('The capital of France is ${capitals['FR']}');

  for (var country in capitals.keys) {
    // перебор ключей
    print('Country: $country, Capital: ${capitals[country]}');
  }

  // Коллекции Set - множество
  // неупорядоченная коллекция уникальных элементов
  print('  ------------------- Множество -------------------  ');
  Set<String> colors = {'Red', 'Green', 'Blue'};
  print(colors);
  colors.add('Yellow'); // добавление элемента
  print(colors);
  colors.add('Red'); // попытка добавить дубликат
  print(colors);
  colors.remove('Green'); // удаление элемента
  print(colors);

  for (var color in colors) {
    print('Color: $color');
  }

  List<int> numbers = [33, -2, 7, -23, 89, -98, 5];
  for (var num in numbers) {
    if (num < 0) {
      continue; // пропуск отрицательных чисел
    }
    if (num > 50) {
      break; // выход из цикла, если число больше 50
    }
    print('Number: $num');
  }

  List<String> robots = [];
  for (var i = 1; i <= 105; i++) {
    if (i < 10) {
      robots.add('Robot_00$i');
    } else if (i < 100) {
      robots.add('Robot_0$i');
    } else {
      robots.add('Robot_$i');
    }
  }
  print(robots);
  print('I want to buy ${robots[3]}');
  print('END OF PROGRAM');
}
