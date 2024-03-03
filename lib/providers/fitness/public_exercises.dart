import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:strive/models/fitness/exercise.dart';
import 'package:strive/util/string.dart';

// Necessary for code-generation to work
part 'public_exercises.g.dart';

@riverpod
class PublicExercises extends _$PublicExercises {
  @override
  Stream<Map<String, Exercise>> build() async* {
    ref.keepAlive();
    final collectionReference =
        FirebaseFirestore.instance.collection('exercises');
    final snapshots = collectionReference.snapshots();

    await for (final snapshot in snapshots) {
      final Map<String, Exercise> data = {};
      // Use toList() to convert the mapped values into a List
      List<Exercise> exercises = snapshot.docs.map((doc) {
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
        );
      }).toList();

      // Convert the List of exercises into a Map using doc.id as the key
      data.addEntries(
          exercises.map((exercise) => MapEntry(exercise.id, exercise)));

      yield data;
    }
  }
}
