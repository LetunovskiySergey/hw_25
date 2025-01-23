import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: Text(
          'Камень, Ножницы, Бумага',
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
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/result',
                    arguments: 'Камень',
                  );
                },
                child: Text(
                  'Камень',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                      fontSize: 16),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/result',
                    arguments: 'Ножницы',
                  );
                },
                child: Text(
                  'Ножницы',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                      fontSize: 16),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/result',
                    arguments: 'Бумага',
                  );
                },
                child: Text(
                  'Бумага',
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
