import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:strive/models/fitness/exercise.dart';
import 'package:strive/util/string.dart';

part 'all_exercises.g.dart';

@riverpod
class AllExercises extends _$AllExercises {
  @override
  Stream<Map<String, Exercise>> build() async* {
    ref.keepAlive();

    final exercisesCollection =
        FirebaseFirestore.instance.collection('exercises');
    final loggedInUserId = FirebaseAuth
        .instance.currentUser!.uid; // Replace with the actual user ID

    final exercisesSnapshots = exercisesCollection.snapshots();
    final privateExercisesSnapshots = FirebaseFirestore.instance
        .collection('users')
        .doc(loggedInUserId)
        .collection('privateExercises')
        .snapshots();

    final combinedStream = CombineLatestStream.combine2(
      exercisesSnapshots,
      privateExercisesSnapshots,
      (QuerySnapshot<Map<String, dynamic>> publicExercisesStream,
          QuerySnapshot<Map<String, dynamic>> privateExercisesStream) {
        final Map<String, Exercise> data = {};

        // Process public exercises from the 'exercises' collection
        final List<Exercise> publicExercises =
            publicExercisesStream.docs.map((doc) {
          return Exercise(
            id: doc.id,
            name: doc.data()['name'],
            creatorsUsername: doc.data()['creatorsUsername'],
            creationDate: doc.data()['creationDate'].toDate(),
            recommendedSetsMax: doc.data()['recommendedSetsMax'],
            recommendedSetsMin: doc.data()['recommendedSetsMin'],
            recommendedRepsMax: doc.data()['recommendedRepsMax'],
            recommendedRepsMin: doc.data()['recommendedRepsMin'],
            repType: convertStringToEnum(doc.data()['repType']),
            isPublic: true,
          );
        }).toList();

        // Process private exercises from the subcollection 'privateExercises'
        final List<Exercise> privateExercises =
            privateExercisesStream.docs.map((privateExerciseDoc) {
          return Exercise(
            id: privateExerciseDoc.id,
            name: privateExerciseDoc.data()['name'],
            creatorsUsername: privateExerciseDoc.data()['creatorsUsername'],
            creationDate: privateExerciseDoc.data()['creationDate'].toDate(),
            recommendedSetsMax: privateExerciseDoc.data()['recommendedSetsMax'],
            recommendedSetsMin: privateExerciseDoc.data()['recommendedSetsMin'],
            recommendedRepsMax: privateExerciseDoc.data()['recommendedRepsMax'],
            recommendedRepsMin: privateExerciseDoc.data()['recommendedRepsMin'],
            repType: convertStringToEnum(privateExerciseDoc.data()['repType']),
            isPublic: true,
          );
        }).toList();

        // Combine both public and private exercises into a single list
        final List<Exercise> allExercises = [
          ...publicExercises,
          ...privateExercises
        ];

        // Convert the List of exercises into a Map using id as the key
        data.addEntries(
          allExercises.map((exercise) => MapEntry(exercise.id, exercise)),
        );

        return data;
      },
    );

    await for (final data in combinedStream) {
      yield data;
    }
  }
}
