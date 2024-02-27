import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:strive/models/fitness/exercise.dart';

part 'workout.freezed.dart';

@freezed
class Workout with _$Workout {
  const factory Workout({
    required String id,
    required String name,
    required List<Exercise> exercises,
    required DateTime creationDate,
    required String creatorUsername,
  }) = _Workout;
}
