import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final TextEditingController nom = TextEditingController();
  final TextEditingController job = TextEditingController();
  final TextEditingController hobbies = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children:[
            SizedBox(height: 16),
              TextField(
                controller: nom,
                decoration: InputDecoration(
                  hintText: "Votre Nom",
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: job,
                decoration: InputDecoration(
                  hintText: "Votre profession",
                ),
              ),
              SizedBox(height: 16), 
              TextField(
                controller: hobbies,
                decoration: InputDecoration(
                  hintText: "Vos loisirs",
                ),
              ),
              SizedBox(height: 32),
              TextButton(
                child: Text("Valider"),
                onPressed: () {
                if (nom.text.isNotEmpty && job.text.isNotEmpty && hobbies.text.isNotEmpty){
                  Navigator.pushNamed(context, '/reponses', arguments:{'nom':nom.text,'job':job.text, 'hobbies':hobbies.text});
                }else{
                  Navigator.pushNamed(context, '/erreur');
                };
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

