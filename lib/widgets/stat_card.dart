import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final int value;
  final String label;
  final MaterialColor color;

  const StatCard({
    super.key,
    required this.value,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.shade100,
        border: Border.all(color: color, width: 3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            '$value',
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text(label),
        ],
      ),
    );
  }
}