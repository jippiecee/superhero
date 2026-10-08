import 'package:flutter/material.dart';
import 'data/heroes.dart';

void main() {
  runApp(const SuperheroApp());
}

class SuperheroApp extends StatelessWidget {
  const SuperheroApp({super.key});

  @override
  Widget build(BuildContext context) {
    final hero = heroes[1];
    return MaterialApp(
      title: 'Superhero',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          centerTitle: true,
          title: const Text('Superhero', style: TextStyle(fontSize: 32),)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              hero.image,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16,),
            Text(
              hero.name, 
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
              const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      border: Border.all(color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Text('${hero.power}',
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                        Text('Power'),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade100,
                      border: Border.all(color: Colors.purple, width: 3),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Text('${hero.intelligence}',
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                        Text('Intelligence'),
                      ]
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
