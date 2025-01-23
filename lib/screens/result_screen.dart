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
        backgroundColor: Colors.grey.shade200,
        title: Text(
          'Результат',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.indigo.shade300, Colors.indigo.shade900],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Вы выбрали: $playerChoice',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                'Противник выбрал: $opponentChoice',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                result,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Ещё раз',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
