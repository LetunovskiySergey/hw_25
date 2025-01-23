import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Камень, Ножницы, Бумага'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/result',
                  arguments: 'Камень',
                );
              },
              child: Text('Камень'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/result',
                  arguments: 'Ножницы',
                );
              },
              child: Text('Ножницы'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/result',
                  arguments: 'Бумага',
                );
              },
              child: Text('Бумага'),
            ),
          ],
        ),
      ),
    );
  }
}
