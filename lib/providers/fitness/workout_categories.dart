// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:strive/widgets/workout_category/workout_category.dart';

// // Necessary for code-generation to work
// part 'workout_categories.g.dart';

// @riverpod
// class WorkoutCategories extends _$WorkoutCategories {
//   @override
//   Stream<List<WorkoutCategory>> build() async* {
//     FirebaseFirestore.instance.collection('categories')
//   .where('field', isEqualTo: 'value')
//   .orderBy('field')
//   .snapshots()
//   .listen((QuerySnapshot querySnapshot){
//     querySnapshot.documents.forEach((document) => print(document));
//   }
// );
//   }
// }
