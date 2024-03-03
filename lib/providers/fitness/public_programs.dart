import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:strive/models/fitness/exercise.dart';
import 'package:strive/models/fitness/program.dart';

import 'package:strive/models/fitness/workout.dart';
import 'package:strive/providers/fitness/public_workouts.dart';

// Necessary for code-generation to work
part 'public_programs.g.dart';

@riverpod
class PublicPrograms extends _$PublicPrograms {
  @override
  Stream<Map<String, Workout>> build() async* {
    ref.keepAlive();
    final collectionReference =
        FirebaseFirestore.instance.collection('programs');
    final snapshots = collectionReference.snapshots();

    final publicWorkoutsData = ref.watch(publicWorkoutsProvider);

    await for (final snapshot in snapshots) {
      final Map<String, Workout> data = {};

      // Convert the mapped values into a List
      List<Workout> programs = snapshot.docs.map((doc) {
        Map<String, Workout> workoutsMap = publicWorkoutsData.when(
          data: (workoutsMap) => workoutsMap,
          loading: () =>
              {}, // Provide a default value or empty list when loading
          error: (error, stackTrace) => {}, // Handle error state
        );

        Map<int, Workout> workouts = {};
        final workoutIdsMap = WorkoutPointers.fromJson(doc.data());
        workoutIdsMap.workoutIds.forEach((positionInProgram, cyclePointer) {
          Map<int, Exercise> exercises = {};
          cyclePointer.exerciseIds.forEach((positionInCycle, exerciseId) {
            var foundExercise = exercisesMap[exerciseId];

            if (foundExercise != null) {
              exercises[positionInCycle] = foundExercise;
            }
          });
          cycles[positionInWorkout] = Cycle(exercises: exercises);
        });

        return Workout(
          id: doc.id,
          name: doc.data()['name'],
          creatorsUsername: doc.data()['creatorsUsername'],
          creationDate: doc.data()['creationDate'].toDate(),
          cycles: cycles,
        );
      }).toList(); // Convert the mapped values into a list

      // Create the data map from the list of workouts
      data.addEntries(workouts.map((workout) => MapEntry(workout.id, workout)));

      yield data;
    }
  }
}
