import 'package:flutter/material.dart';
import 'questions.dart';
import 'reponses.dart';
import 'erreur.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Questions/Réponses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Questions(),
      routes: {
        '/questions': (context) => Questions(),
        '/reponses': (context) => Reponses(),
        '/erreur':(context) => Erreur(),
      },
    );
  }
}