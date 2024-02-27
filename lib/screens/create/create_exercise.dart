import 'package:flutter/material.dart';
import 'package:strive/widgets/create/new_exercise.dart';

class CreateExerciseScreen extends StatelessWidget {
  const CreateExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: const Text('Create Exercise'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: const NewExercise(),
      ),
    );
  }
}
