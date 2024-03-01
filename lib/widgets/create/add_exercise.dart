import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:strive/models/fitness/workout.dart';
import 'package:strive/providers/fitness/exercises.dart';
import 'package:strive/widgets/display/exercise_details.dart';
import 'package:strive/widgets/display/list_display_vertical.dart';

class AddExercise extends ConsumerStatefulWidget {
  const AddExercise({
    super.key,
    required this.onAddExercise,
    required this.currentWorkoutPosition,
    required this.currentSupersetPosition,
  });

  final void Function(ExercisePointer exercise) onAddExercise;
  final int currentWorkoutPosition;
  final int currentSupersetPosition;

  @override
  ConsumerState<AddExercise> createState() => _AddExerciseState();
}

class _AddExerciseState extends ConsumerState<AddExercise> {
  final _searchTextController = TextEditingController();

  void _submitExercise(
      String exerciseId, int workoutPosition, int supersetPosition) {
    widget.onAddExercise(ExercisePointer(
      ids: [exerciseId],
      workoutPosition: workoutPosition,
    ));

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
                        return ListDisplayVertical(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (ctx) {
                                return ExerciseDetails(
                                  exercise: exercises[index],
                                );
                              }),
                            );
                          },
                          title: Text(exercises[index].name),
                          trailing: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () => _submitExercise(
                              exercises[index].id,
                              widget.currentWorkoutPosition,
                              widget.currentSupersetPosition,
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
