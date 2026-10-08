import 'package:flutter/material.dart';
import 'package:superhero/detail_screen.dart';
import '../models/superhero.dart';

class HeroTile extends StatelessWidget {
  final Superhero hero;

  const HeroTile({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    final isMarvel = hero.universe == Universe.marvel;
    final color = isMarvel ? Colors.red : Colors.blue;

    return InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => DetailScreen(hero: hero))
        );
      },
      child: Padding( 
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            CircleAvatar(
              radius: 36,
              backgroundImage: AssetImage(hero.image),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hero.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: color.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    isMarvel ? 'Marvel' : 'DC',
                    style: TextStyle(fontSize: 16, color: color.shade900),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}