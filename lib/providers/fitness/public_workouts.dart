import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:strive/models/fitness/workout.dart';

// Necessary for code-generation to work
part 'public_workouts.g.dart';

@riverpod
class PublicWorkouts extends _$PublicWorkouts {
  @override
  Stream<List<Workout>> build() async* {
    ref.keepAlive();
    final collectionReference =
        FirebaseFirestore.instance.collection('workouts');
    final snapshots = collectionReference.snapshots();

    await for (final snapshot in snapshots) {
      final List<Workout> data = snapshot.docs.map((doc) {
        final cyclePointers = [
          ...(doc.data()['cycles'] as List)
              .map((e) => CyclePointer.fromJson(e))
              .toList()
        ];
        return Workout(
          id: doc.id,
          name: doc.data()['name'],
          creatorsUsername: doc.data()['creatorsUsername'],
          creationDate: doc.data()['creationDate'].toDate(),
          cyclePointers: cyclePointers,
        );
      }).toList();
      yield data;
    }
  }
}
