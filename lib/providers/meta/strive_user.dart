import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:strive/models/meta/strive_user.dart';

part 'strive_user.g.dart';

@riverpod
class StriveUserNotifier extends _$StriveUserNotifier {
  @override
  StriveUser build() {
    ref.keepAlive();

    return const StriveUser(
      id: null,
      username: null,
      email: null,
      imageUrl: null,
      birthdate: null,
      weights: null,
      creationDate: null,
      savedExercises: [],
      savedWorkouts: [],
    );
  }

  void setUser(StriveUser newStriveUser) {
    state = state.copyWith(
      id: newStriveUser.id,
      username: newStriveUser.username,
      email: newStriveUser.email,
      imageUrl: newStriveUser.imageUrl,
      birthdate: newStriveUser.birthdate,
      weights: newStriveUser.weights,
      creationDate: newStriveUser.creationDate,
      savedExercises: newStriveUser.savedExercises,
      savedWorkouts: newStriveUser.savedWorkouts,
    );
  }

  void clearUser() {
    state = state.copyWith(
      id: null,
      username: null,
      email: null,
      imageUrl: null,
      birthdate: null,
      weights: null,
      creationDate: null,
      savedExercises: [],
      savedWorkouts: [],
    );
  }

  bool checkIsExerciseSaved(String exerciseId) {
    for (var savedExerciseId in state.savedExercises) {
      if (exerciseId == savedExerciseId) {
        return true;
      }
    }
    return false;
  }

  Future<bool> saveExercise(String savedExerciseId) async {
    final newSavedExercises = [...state.savedExercises, savedExerciseId];
    state = state.copyWith(savedExercises: newSavedExercises);

    print(state.id);

    DocumentReference documentReference =
        FirebaseFirestore.instance.collection('users').doc(state.id);

    try {
      await documentReference.update({
        'savedExercises': FieldValue.arrayUnion([savedExerciseId]),
      });
      print(
          'exercise added to the user\'s list of savedExercises successfully!');
    } catch (e) {
      print('Error adding exercise to the list of savedExercises: $e');
      return false;
    }
    return true;
  }

  Future<bool> removeExercise(String removedExerciseId) async {
    final newSavedExercises = [...state.savedExercises];
    newSavedExercises.remove(removedExerciseId);
    state = state.copyWith(savedExercises: newSavedExercises);

    DocumentReference documentReference =
        FirebaseFirestore.instance.collection('users').doc(state.id);

    try {
      await documentReference.update({
        'savedExercises': FieldValue.arrayRemove([removedExerciseId]),
      });
      print(
          'exercise removed from the user\'s list of savedExercises successfully!');
    } catch (e) {
      print('Error removing exercise from the list of savedExercises: $e');
      return false;
    }
    return true;
  }

  bool checkIsWorkoutSaved(String workoutId) {
    for (var savedWorkoutId in state.savedWorkouts) {
      if (workoutId == savedWorkoutId) {
        return true;
      }
    }
    return false;
  }

  Future<bool> saveWorkout(String savedWorkoutId) async {
    final newSavedWorkouts = [...state.savedWorkouts, savedWorkoutId];
    state = state.copyWith(savedWorkouts: newSavedWorkouts);

    print(state.id);

    DocumentReference documentReference =
        FirebaseFirestore.instance.collection('users').doc(state.id);

    try {
      await documentReference.update({
        'savedWorkouts': FieldValue.arrayUnion([savedWorkoutId]),
      });
      print('workout added to the user\'s list of savedWorkouts successfully!');
    } catch (e) {
      print('Error adding workout to the list of savedWorkouts: $e');
      return false;
    }
    return true;
  }

  Future<bool> removeWorkout(String removedWorkoutId) async {
    final newSavedWorkouts = [...state.savedWorkouts];
    newSavedWorkouts.remove(removedWorkoutId);
    state = state.copyWith(savedWorkouts: newSavedWorkouts);

    DocumentReference documentReference =
        FirebaseFirestore.instance.collection('users').doc(state.id);

    try {
      await documentReference.update({
        'savedWorkouts': FieldValue.arrayRemove([removedWorkoutId]),
      });
      print(
          'workout removed from the user\'s list of savedWorkouts successfully!');
    } catch (e) {
      print('Error removing workout from the list of savedWorkouts: $e');
      return false;
    }
    return true;
  }
}
