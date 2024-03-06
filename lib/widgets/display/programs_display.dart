import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strive/models/fitness/exercise.dart';

import 'package:strive/models/fitness/program.dart';
import 'package:strive/providers/fitness/all_exercises.dart';
import 'package:strive/providers/fitness/public_programs.dart';
import 'package:strive/providers/meta/strive_user.dart';
import 'package:strive/widgets/display/list_display_horizontal.dart';

class ProgramsDisplay extends ConsumerWidget {
  const ProgramsDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedExercises = ref.watch(striveUserNotifierProvider).savedExercises;
    final allExercises = ref.watch(allExercisesProvider);
    allExercises.when(
      data: (allExercises) {
        print(allExercises);
        Map<String, Exercise> myExercises = Map.fromEntries(
          allExercises.entries
              .where((entry) => savedExercises.contains(entry.key)),
        );
        print(myExercises);
      },
      error: (error, stackTrace) => print(error.toString()),
      loading: () => print('loading'),
    );

    // Widget programListView = publicPrograms.when(
    //   data: (publicProgramsMap) {
    //     var publicPrograms = publicProgramsMap.values.toList();
    //     return ListView.builder(
    //       itemBuilder: (context, index) {
    //         return ListDisplayHorizontal(
    //           containers: [],
    //           containerHeight: 200,
    //           titleWidget: const Row(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //               Text(
    //                 'Workouts',
    //                 style: TextStyle(fontSize: 20),
    //               ),
    //             ],
    //           ),
    //         );
    //       },
    //       itemCount: publicPrograms.length,
    //     );
    //   },
    //   loading: () => const SliverFillRemaining(
    //     child: Center(
    //       child: CircularProgressIndicator(),
    //     ),
    //   ),
    //   error: (error, stack) => SliverToBoxAdapter(
    //     child: Text('Error: $error'),
    //   ),
    // );
    return const Text('hello');
  }
}
