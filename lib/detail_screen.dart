import 'package:flutter/material.dart';
import '../models/superhero.dart';
import '../widgets/stat_card.dart';

class DetailScreen extends StatelessWidget {
  final Superhero hero;

  const DetailScreen({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(hero.name)),
      body: Column(
        children: [
          Image.asset(
            hero.image,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          Text(
            hero.name,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text(
            hero.alias,
            style: const TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatCard(value: hero.power, label: 'Power', color: Colors.red),
              StatCard(
                value: hero.intelligence,
                label: 'Intelligence',
                color: Colors.purple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}