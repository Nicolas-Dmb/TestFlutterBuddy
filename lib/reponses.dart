import 'package:flutter/material.dart';

class Reponses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map; 
    return Scaffold(
      appBar: AppBar(
        title: Text('Réponses'),
      ),
      body:Center(
      child: Column( 
        children:[
          Text(
            "Réponses à vos questions :",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
          ),
          SizedBox(height: 8),
          Text(
            "Votre nom est ${arguments['nom']}",
          ),
          SizedBox(height: 8), 
          Text(
            "Vous êtes ${arguments['job']}",
          ),
          SizedBox(height: 8),
          Text(
            "Vos loisirs sont ${arguments['hobbies']}",
          ),
        ],
        ),
      ),
    );
  }
}

