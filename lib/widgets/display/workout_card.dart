import 'package:flutter/material.dart';

import 'package:strive/models/fitness/workout.dart';

class WorkoutCard extends StatelessWidget {
  const WorkoutCard({
    super.key,
    required this.workout,
  });

  final Workout workout;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(workout.name),
          Text(workout.id),
        ],
      ),
    );
  }
}
