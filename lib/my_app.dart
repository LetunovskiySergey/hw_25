import 'package:flutter/material.dart';
import 'package:hw_25/screens/home_screen.dart';
import 'package:hw_25/screens/result_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Камень, Ножницы, Бумага',
      theme: ThemeData(primarySwatch: Colors.indigo),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/result': (context) => ResultScreen(),
      },
    );
  }
}
