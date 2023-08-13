import 'package:flutter/material.dart';
import 'package:screen/Screens/OpeningScreen.dart';
import 'package:screen/Screens/QuizScreen.dart';
import 'package:screen/Screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
    @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quiz App',
      home: OpeningScreen()
    );
  }
}
