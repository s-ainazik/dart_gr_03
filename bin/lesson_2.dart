import 'dart:io';

void main() {
  int x = 10;
  int y = 20;

  print('X is equal to Y: ${x == y}');
  print('X is not equal to Y: ${x != y}');
  print('X is greater than Y: ${x > y}');
  print('X is less than Y: ${x < y}');
  print('X is greater than or equal to Y: ${x >= y}');
  print('X is less than or equal to Y: ${x <= y}');

  // условные конструкции if else
  var temperature = 10;
  var isSnowy = false;

  if (temperature > 5) {
    final cinemaTitle = 'Cosmo Park';
    print("Let's go to $cinemaTitle");
  }

  if (isSnowy) {
    print("It's snowy outside, wear warm clothes!");
  }

  if (temperature > 20) {
    print('Go swimming');
  } else {
    print('Stay home and read a book');
  }

  if (temperature == 10) {
    print('The temperature is exactly 10 degrees');
  } else {
    print('The temperature is not 10 degrees');
  }

  /*else {
    print('I am a programmer!'  );
  }*/ // Ошибка нет предшествующего if

  // temperature = temperature - 20;
  if (temperature >= 30) {
    print('The weather is hot');
  } else if (temperature >= 20) {
    print('The weather is warm');
  } else if (temperature >= 10) {
    print('The weather is cool');
  } else if (temperature >= 0) {
    print('The weather is cold');
  } else {
    print('The weather is freezing');
  }

  // логические операторы

  // AND && - (И)
  if (temperature > 5 && temperature < 30) {
    print('The temperature is comfortable');
  }

  if (isSnowy && temperature > 5) {
    print('Dress warmly');
  }

  // OR || - (ИЛИ)
  if (temperature > 7 || isSnowy) {
    print('You can go for a walk');
  }

  if (isSnowy || temperature < 0) {
    print('Stay at school');
  }

  bool isWeekend = true;
  int numberOfStudents = 12;

  if (isWeekend && isSnowy ||
      temperature > 0 && temperature < 20 ||
      numberOfStudents > 15 && numberOfStudents < 30) {
    // true && false || true && true || false && true
    // 1 * 0 + 1 * 1 + 0 * 1 => 0 + 1 + 0 => 1 (true)
    print('Conditions are met');
  }

  if (isWeekend &&
      (isSnowy || temperature > 0) &&
      (temperature < 20 || numberOfStudents > 15) &&
      numberOfStudents < 30) {
    // true && (true || false) && (true || false) && true
    // 1 * (1 + 0) * (1 + 0) * 1 => 1 * 1 * 1 * 1 => 1 (true)
    print('Do this action');
  }

  // if (isSnowy) {
  // } else {
  //   print('Dancing');
  // }

  if (!isSnowy) {
    print('Dancing');
  }

  if (!(temperature > 0 && temperature < 35)) {
    print('Running');
  }

  // Преобразование типов
  String ageString = '15';
  int age = int.parse(ageString); // Преобразование строки в целое число
  print('Age plus 5 is: ${age + 5}');

  double heightDouble = 175.5;
  String heightString = heightDouble
      .toString(); // Преобразование числа в строку
  print('My height is: ' + heightString + ' cm');

  String year = 'Two thousand and twenty-four';
  // int yearInt = int.parse(year); // Ошибка преобразования

  numberOfStudents = numberOfStudents + 10;
  temperature = temperature + 15;
  if (numberOfStudents > 20) {
    print('Go to picnic');
    if (temperature > 15) {
      print('Eat an ice-cream');
    } else {
      print('Drink a hot tea');
    }
  }

  // Ввод информации из консоли
  print('Enter Number 1:');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Enter Number 2:');
  var num2 = int.parse(stdin.readLineSync()!);
  print('You entered: $num1 and $num2');

  int number = 5;
  switch (number) {
    case 1:
      print('One');
      break;
    case 2:
      print('Two');
      break;
    case 3:
      print('Three');
      break;
    default:
      print('Number is not 1, 2, or 3');
  }

  print('Enter your sign (+, -, * or /):');
  final String sign = stdin.readLineSync()!;
  switch (sign) {
    case '+':
      print('Addition selected');
      print(num1 + num2);
      break;
    case '-':
      print('Subtraction selected');
      print(num1 - num2);
      break;
    case '*':
      print('Multiplication selected');
      print(num1 * num2);
      break;
    case '/':
      print('Division selected');
      print(num1 / num2);
      break;
    default:
      print('Unknown operation');
  }
}
