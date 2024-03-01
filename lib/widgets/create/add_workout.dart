import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:strive/providers/fitness/public_workouts.dart';
import 'package:strive/widgets/display/list_display_vertical.dart';
import 'package:strive/widgets/display/workout_details.dart';

class AddWorkout extends ConsumerStatefulWidget {
  const AddWorkout({
    super.key,
    required this.onAddWorkout,
  });

  final void Function(String workoutId) onAddWorkout;

  @override
  ConsumerState<AddWorkout> createState() => _AddExerciseState();
}

class _AddExerciseState extends ConsumerState<AddWorkout> {
  final _searchTextController = TextEditingController();

  void _submitExercise(String workoutId) {
    widget.onAddWorkout(workoutId);

    Navigator.pop(context);
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final publicWorkouts = ref.watch(publicWorkoutsProvider);
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
              publicWorkouts.when(
                data: (publicWorkouts) {
                  // Use the data in your UI
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return ListDisplayVertical(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (ctx) {
                                return WorkoutDetails(
                                  workout: publicWorkouts[index],
                                );
                              }),
                            );
                          },
                          title: Text(publicWorkouts[index].name),
                          trailing: IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () =>
                                _submitExercise(publicWorkouts[index].id),
                          ),
                        );
                      },
                      childCount: publicWorkouts.length,
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
