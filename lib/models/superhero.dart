enum Universe { marvel, dc}

class Superhero {
  
  final String name;
  final String alias;
  final Universe universe;
  final String image;
  final int power;
  final int intelligence;

 const Superhero({
    required this.name,
    required this.alias,
    required this.universe,
    required this.image,
    required this.power,
    required this.intelligence,
  });
 
}
