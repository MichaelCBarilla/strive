import 'package:flutter/material.dart';

import 'package:strive/models/fitness/workout.dart';

class AddExercise extends StatefulWidget {
  const AddExercise({
    super.key,
    required this.onAddExercise,
  });

  final void Function(ExercisePointer exercise) onAddExercise;

  @override
  State<AddExercise> createState() => _AddExerciseState();
}

class _AddExerciseState extends State<AddExercise> {
  final _searchTextController = TextEditingController();

  void _submitExercise() {
    // widget.onAddExercise(ExercisePointer(
    //   id: ,
    //   position ,
    // ));

    Navigator.pop(context);
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    return LayoutBuilder(builder: (ctx, constraints) {
      final height = constraints.maxHeight - 100;
      return SizedBox(
        height: height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, keyboardSpace + 16),
            child: Column(
              children: [
                TextField(
                  controller: _searchTextController,
                  decoration: const InputDecoration(
                    label: Row(
                      children: [
                        Icon(Icons.search),
                        Text('Search'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
