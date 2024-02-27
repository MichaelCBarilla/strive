// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:strive/models/exercise.dart';

// // Necessary for code-generation to work
// part 'exercises.g.dart';

// @riverpod
// class Exercises extends _$Exercises {
//   @override
//   Stream<List<Exercise>> build() async* {
//     ref.keepAlive();

//     yield FirebaseFirestore.instance.collection('exercises').snapshots();
//   }
// }
