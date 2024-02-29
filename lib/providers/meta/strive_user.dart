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
    );
  }

  void setUser(
    String newId,
    String newUsername,
    String newEmail,
    String newImageUrl,
    DateTime newBirthdate,
    List<Weight> newWeights,
    DateTime newCreationDate,
    List<String> newSavedExercises,
  ) {
    state = state.copyWith(
      id: newId,
      username: newUsername,
      email: newEmail,
      imageUrl: newImageUrl,
      birthdate: newBirthdate,
      weights: newWeights,
      creationDate: newCreationDate,
      savedExercises: newSavedExercises,
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
    );
  }

  bool checkIsSaved(String exerciseId) {
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

    // DocumentReference documentReference =
    //     FirebaseFirestore.instance.collection('users').doc(state.id);

    // try {
    //   await documentReference.update({
    //     'savedExercises': FieldValue.arrayUnion([savedExerciseId]),
    //   });
    //   print(
    //       'exercise added to the user\'s list of savedExercises successfully!');
    // } catch (e) {
    //   print('Error adding exercise to the list of savedExercises: $e');
    //   return false;
    // }
    return true;
  }

  Future<bool> removeExercise(String removedExerciseId) async {
    final newSavedExercises = state.savedExercises;
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
}
