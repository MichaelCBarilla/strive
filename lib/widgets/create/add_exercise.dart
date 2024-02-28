import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:strive/models/fitness/workout.dart';
import 'package:strive/providers/fitness/exercises.dart';

class AddExercise extends ConsumerStatefulWidget {
  const AddExercise({
    super.key,
    required this.onAddExercise,
  });

  final void Function(ExercisePointer exercise) onAddExercise;

  @override
  ConsumerState<AddExercise> createState() => _AddExerciseState();
}

class _AddExerciseState extends ConsumerState<AddExercise> {
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
    final exercises = ref.watch(exercisesProvider);
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    return LayoutBuilder(builder: (ctx, constraints) {
      final height = constraints.maxHeight - 100;
      return SizedBox(
        height: height,
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, keyboardSpace + 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: TextField(
                  controller: _searchTextController,
                  decoration: const InputDecoration(
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                    height: 20), // Spacer between TextField and Exercise List
              ), // Replace SizedBox with SliverSpacing
              exercises.when(
                data: (exercises) {
                  // Use the data in your UI
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return ListTile(
                          title: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Text(exercises[index].name),
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: exercises.length,
                    ),
                  );
                },
                loading: () => const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                error: (error, stack) => SliverToBoxAdapter(
                  child: Text('Error: $error'),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
