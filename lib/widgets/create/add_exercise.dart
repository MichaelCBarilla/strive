import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:strive/providers/fitness/public_exercises.dart';
import 'package:strive/widgets/display/exercise_details.dart';
import 'package:strive/widgets/display/list_display_vertical.dart';

class AddExercise extends ConsumerStatefulWidget {
  const AddExercise({
    super.key,
    required this.onAddExercise,
    required this.positionInWorkout,
    required this.positionInCycle,
  });

  final void Function(
          String exerciseId, int positionInWorkout, int positionInCycle)
      onAddExercise;
  final int positionInWorkout;
  final int positionInCycle;

  @override
  ConsumerState<AddExercise> createState() => _AddExerciseState();
}

class _AddExerciseState extends ConsumerState<AddExercise> {
  final _searchTextController = TextEditingController();

  void _submitExercise(
      String exerciseId, int workoutPosition, int supersetPosition) {
    widget.onAddExercise(exerciseId, workoutPosition, supersetPosition);

    Navigator.pop(context);
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final publicExercises = ref.watch(publicExercisesProvider);
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
              publicExercises.when(
                data: (publicExercises) {
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
                                  exercise: publicExercises[index],
                                );
                              }),
                            );
                          },
                          title: Text(publicExercises[index].name),
                          trailing: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () => _submitExercise(
                              publicExercises[index].id,
                              widget.positionInWorkout,
                              widget.positionInCycle,
                            ),
                          ),
                        );
                      },
                      childCount: publicExercises.length,
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
