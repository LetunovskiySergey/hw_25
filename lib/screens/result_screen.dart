import 'dart:math';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String playerChoice =
        ModalRoute.of(context)?.settings.arguments as String;

    List<String> options = ['Камень', 'Ножницы', 'Бумага'];

    String opponentChoice = options[Random().nextInt(3)];

    String result;
    if (playerChoice == opponentChoice) {
      result = 'Ничья';
    } else if ((playerChoice == 'Камень' && opponentChoice == 'Ножницы') ||
        (playerChoice == 'Ножницы' && opponentChoice == 'Бумага') ||
        (playerChoice == 'Бумага' && opponentChoice == 'Камень')) {
      result = 'Вы победили!';
    } else {
      result = 'Вы проиграли!';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Результат'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Вы выбрали: $playerChoice', style: TextStyle(fontSize: 20)),
            Text('Противник выбрал: $opponentChoice',
                style: TextStyle(fontSize: 20)),
            Text(result,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Ещё раз'),
            ),
          ],
        ),
      ),
    );
  }
}
