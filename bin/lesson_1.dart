void main() {
  print('Hello World!');
  print('Welcome to Dart programming.');
  print(56);
  print(5.45); // Вывод числа с плавающей точкой

  // Комментарий: это однострочный комментарий
  /*
    Это многострочный комментарий
    Он может занимать несколько строк
  */

  // Переменные и типы данных
  String myName = 'John Doe'; // Строковая переменная
  int myAge = 25; // Целочисленная переменная
  double myHeight = 175.9; // Переменная с плавающей точкой
  bool isStudent = false; // Логическая переменная
  print(myName);
  print(myAge);
  print(myHeight);
  print(isStudent);

  String myJob; // Объявление переменной без инициализации
  // print(myJob); // Выводит null, так как переменная не инициализирована
  myJob = 'Designer'; // Инициализация переменной
  print(myJob);
  int mySalary = 5000; // Зарплата
  print(mySalary);
  myJob = 'Senior Developer'; // Изменение значения переменной
  print(myJob);
  mySalary = mySalary + 2000; // Увеличение зарплаты
  print(mySalary);

  String myPetName1 = 'Buddy'; // Имя питомца
  String myPetName2 = 'Max'; // Имя питомца
  // String my pet name = 'Charlie'; // Ошибка: пробелы в имени переменной недопустимы
  // String 3myPetNmae = 'Rocky'; // Ошибка: имя переменной не может начинаться с цифры

  print(
    'My name is ' + myName + '. My job is ' + myJob + '.',
  ); // Конкатенация строк
  print('My name is $myName. My job is $myJob.'); // Интерполяция строк
  print('I was born in ${2026 - myAge}. My salary is ${mySalary}USD.');

  print("I'm learning Dart programming.");
  print('I\'m learning Dart programming today.');

  String multiLineString = '''
  This is a multi-line string.
  It can span multiple lines.
  Dart makes it easy to work with strings.
  ''';
  print(multiLineString);

  // Строковые функциии
  String sampleText =
      "  Dart is a client-optimized language for fast apps on any platform.  ";
  print(sampleText.toUpperCase()); // Преобразование в верхний регистр
  print(sampleText.toLowerCase()); // Преобразование в нижний регистр
  print(sampleText.trim()); // Удаление пробелов в начале и конце строки
  print(sampleText.replaceAll('Dart', 'Java')); // Замена подстроки

  // Арифметические операции
  print(10 + 5); // Сложение
  print(10 - 5); // Вычитание
  print(10 * 5); // Умножение
  print(10 / 5); // Деление
  print(17 ~/ 5); // Целочисленное деление
  print(17 % 5); // Остаток от деления

  var myVariable = 'Initial Value';
  print(myVariable.toUpperCase());

  var number = 10;
  print(number + 2);

  final String nonChangeable = 'I cannot be changed';
  // nonChangeable = 'Trying to change'; // Ошибка: нельзя изменить значение final переменной
  print(nonChangeable);

  // var -> значение может изменяться и тип определяется автоматически
  // final -> значение не может изменяться после инициализации, тип можно указать явно или оставить для автоматического определения

  String? city;
  print(city); // Выводит null, так как переменная не инициализирована
  city = 'New York';
  print(city);
}
