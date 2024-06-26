import 'package:flutter/material.dart';
import 'package:strive/screens/create/create_exercise.dart';
import 'package:strive/screens/create/create_program_screen.dart';
import 'package:strive/screens/create/create_workout.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('What do you want to create?'),
        SizedBox(
          width: 200,
          height: 70,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) {
                  return const CreateProgramScreen();
                }),
              );
            },
            child: const Text('Program'),
          ),
        ),
        SizedBox(
          width: 200,
          height: 70,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) {
                  return const CreateWorkoutScreen();
                }),
              );
            },
            child: const Text('Workout'),
          ),
        ),
        SizedBox(
          width: 200,
          height: 70,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) {
                  return const CreateExerciseScreen();
                }),
              );
            },
            child: const Text('Exercise'),
          ),
        ),
      ],
    );
  }
}
