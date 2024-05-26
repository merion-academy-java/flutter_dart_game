import 'dart:io';

import 'package:flutter_dart_game/flutter_dart_game.dart' as flutter_dart_game;

void main(List<String> arguments) {
  print('Hello world!');
  print('Введи свое имя: ');

  String? name = stdin.readLineSync();

  print("$name, я умею склыдвать числа. Давай попробуем!");

  while (true) {
    print("Введи первое число:");
    String? num1String = stdin.readLineSync();
    int num1 = int.parse(num1String!);

    print("Введи второе число:");
    String? num2String = stdin.readLineSync();
    int num2 = int.parse(num2String!);

    int sum = num1 + num2;
    print("$num1 + $num2 = $sum");

    bool run = runNextGame();
    if (run == false) break;
  }

  print("$name, спасибо за проведенное время!");
}

bool runNextGame() {
  print("Попробуешь еще раз? (да / нет)");
  var answer = stdin.readLineSync();
  if (answer == null || answer.isEmpty) {
    answer = stdin.readLineSync();
  }
  if (answer!.toLowerCase() == "да") {
    return true;
  }
  if (answer.toLowerCase() == "нет") {
    return false;
  }

  return runNextGame();
}

