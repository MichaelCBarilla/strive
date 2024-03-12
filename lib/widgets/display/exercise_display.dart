import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strive/models/fitness/exercise.dart';
import 'package:strive/providers/fitness/all_exercises.dart';
import 'package:strive/providers/meta/strive_user.dart';
import 'package:strive/widgets/display/list_display_vertical.dart';

class ExercisesDisplay extends ConsumerWidget {
  const ExercisesDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedExercises = ref.watch(striveUserNotifierProvider).savedExercises;
    final allExercises = ref.watch(allExercisesProvider);
    return allExercises.when(
      data: (allExercises) {
        // print(allExercises);
        Map<String, Exercise> myExercises = Map.fromEntries(
          allExercises.entries
              .where((entry) => savedExercises.contains(entry.key)),
        );

        return ListView.builder(
          itemCount: myExercises.length,
          itemBuilder: (context, index) {
            final exercise = myExercises.values.elementAt(index);

            return ListDisplayVertical(
              onPressed: () {},
              title: Text(exercise.name),
            );
          },
        );
      },
      error: (error, stackTrace) {
        print('Issue in exercises_display.dart: ${error.toString()}');
        return const Text('issue in getting exercises');
      },
      loading: () {
        print('loading exercises in exercises_display.dart');
        return const CircularProgressIndicator();
      },
    );
  }
}
