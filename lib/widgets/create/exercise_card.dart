import 'package:flutter/material.dart';
import 'package:strive/models/fitness/exercise.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({
    super.key,
    required this.exercise,
  });

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(exercise.name),
          Text(exercise.id),
        ],
      ),
    );
  }
}
