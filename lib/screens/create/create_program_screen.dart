import 'package:flutter/material.dart';
import 'package:strive/widgets/workout_category/new_program.dart';

class CreateProgramScreen extends StatelessWidget {
  const CreateProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: const Text('Create Program'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: const Center(
          child: NewProgram(),
        ),
      ),
    );
  }
}
