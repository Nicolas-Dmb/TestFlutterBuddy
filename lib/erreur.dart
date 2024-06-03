import 'package:flutter/material.dart';

class Erreur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Réponses'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Vous n'avez pas répondu à toutes les questions",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              TextButton(
                child: Text("Retour"),
                onPressed: () {
                  Navigator.pushNamed(context, '/questions');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
