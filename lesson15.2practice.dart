import 'dart:io';
import 'dart:math';
import 'dart:mirrors';

void main() {
//task1();
//task2();
//task3();
//task4();
  func();


}

// 1) Создать функцию, которая запрашивает у пользователя ответ на пример a
// + b = ?
// Нужно создать две переменные a и b, которые генерируются с помощью
// рандома.
// Также нужна переменная которая записывает результат(сложение
// переменных a и b).
// Затем вы вводите ответ с клавиатуры.
// Компьютер сравнивает ответы.
// Если вы ответили правильно, то вывести на экран «Правильно!».
// Если вы ответили неправильно, то заново вызвать функцию.

void task1() {
  int a = Random().nextInt(50);
  int b = Random().nextInt(10);
  int c = a + b;

  stdout.write('Введите сумму чисел: $a + $b = ');
  int userAnswer = int.parse(stdin.readLineSync()!);

  if (userAnswer == c) {
    print('Правильно!');
  } else {
    print('Неправильно. Попробуйте еще раз.');
    task1();
  }
}

// 2) Создать функцию, которая бросает игральную кость(нарды).
// Затем вы вводите ответ с клавиатуры: 1- бросить еще раз, 2 - закончить.
// Если вы введете 1, то функция вызывается заново,
// Если вы введете 2, то вывести на экран «wasted»

void task2() {
  int min = 1;
  int max = 6;
  int bones = Random().nextInt(max - min + 1) + min;

  print('Вы бросили кость и выпало: $bones');
  stdout.write('Хотите бросить еще раз? (1 - да, 2 - нет): ');
  int userAnswer = int.parse(stdin.readLineSync()!);

  if (userAnswer == 1) {
    task2();
  } else if (userAnswer == 2) {
    print('wasted');
  }
}

// 3) Создать функцию, которая возводит введенное вами число в введенную
// вами степенью,
// т.е. Ваша функция принимает два параметра a и b.

void task3() {
  stdout.write('Введите число: ');
  int numb = int.parse(stdin.readLineSync()!);

  stdout.write('Введите степень: ');
  int stepen = int.parse(stdin.readLineSync()!);

  int res = stepenTask3(numb, stepen);

  print(
      'Введенное число: $numb, введенная степень: $stepen  на те результат $res');
}

//косвенная рекурся
int stepenTask3(int numb, int stepen) {
  return pow(numb, stepen).toInt();
}

//4) Дано натуральное число N. Вычислите сумму его цифр.

void task4() {
  stdout.write('введите натуральное число: ');
  int number = int.parse(stdin.readLineSync()!);
  int sum = 0;
  String stro4ka = number.toString();

  for (int i = 0; i < stro4ka.length; i++) {
    sum += int.parse(stro4ka[i]);
  }
  print('Сумма цифр числа $number равна = $sum');
  //return sum;
}

// 5) Последовательность чисел Фибоначи определяется
// формулой Fn = Fn-1 + Fn-2
// .

// То есть, следующее число получается как сумма двух предыдущих.
// Первые два числа равны 1, затем 2(1+1), затем 3(1+2), 5(2+3) и так
// далее: 1, 1, 2, 3, 5, 8, 13, 21....
// Напишите функцию fib(n) которая возвращает n-е число Фибоначчи.
// Пример работы:

int fibo(int f) {
  if (f < 2) {
    return f;
  } else
    return fibo(f - 1) + fibo(f - 2);
}

void task5() {
  stdout.write('Введите номер числа в последовательности Фибоначчи: ');
  int f = int.parse(stdin.readLineSync()!);

  int fibNumb = fibo(f);
  print('Число Фибоначчи: $fibNumb');
}



// Функция для проверки задачь через ввод
void func() {
  
  print('выбери задание для проверки ');
  print('1 функция, которая запрашивает у пользователя ответ ');
  print('2 нарды');
  print('3 степень');
  print('4 вычислить сумму натурального числа');
  print('5 Фибоначи');

  String user = stdin.readLineSync()!;
  if (user == '1') {
    print('===========задача 1==========');
    task1();
  } else if (user == '2') {
    print('===========задача 2==========');
    task2();
  } else if (user == '3') {
    print('===========задача 3==========');
    task3();
  } else if (user == '4') {
    print('===========задача 4==========');
    task4();
  } else if (user == '5') {
    print('===========задача 5==========');
    task5();
  } else {
    print('Выбери задачу $func');
  }
// return func();
}
