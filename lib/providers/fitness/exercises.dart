import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:strive/models/fitness/exercise.dart';
import 'package:strive/util/string.dart';

// Necessary for code-generation to work
part 'exercises.g.dart';

@riverpod
class Exercises extends _$Exercises {
  @override
  Stream<List<Exercise>> build() async* {
    ref.keepAlive();
    final collectionReference =
        FirebaseFirestore.instance.collection('exercises');
    final snapshots = collectionReference.snapshots();

    await for (final snapshot in snapshots) {
      final List<Exercise> data = snapshot.docs
          .map((doc) => Exercise(
                id: doc.id,
                name: doc.data()['name'],
                creatorsUsername: doc.data()['creatorsUsername'],
                creationDate: doc.data()['creationDate'].toDate(),
                recommendedSetsMax: doc.data()['recommendedSetsMax'],
                recommendedSetsMin: doc.data()['recommendedSetsMin'],
                recommendedRepsMax: doc.data()['recommendedRepsMax'],
                recommendedRepsMin: doc.data()['recommendedRepsMin'],
                repType: convertStringToEnum(doc.data()['repType']),
              ))
          .toList();
      yield data;
    }
  }
}
