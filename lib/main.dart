import 'package:flutter/material.dart';
import 'data/heroes.dart';
import 'widgets/hero_tile.dart';

void main() {
  runApp(const SuperheroApp());
}

class SuperheroApp extends StatelessWidget {
  const SuperheroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Superhero',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          centerTitle: true,
          title: const Text('Superhero', style: TextStyle(fontSize: 32)),
        ),
        body: ListView.builder(
          itemCount: heroes.length,
          itemBuilder: (context, index) => HeroTile(hero: heroes[index]),
        ),
      ),
    );
  }
}