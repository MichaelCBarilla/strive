import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout.freezed.dart';

@freezed
class ExercisePointer with _$ExercisePointer {
  const factory ExercisePointer({
    required List<String> ids,
    required int workoutPosition,
  }) = _ExercisePointer;
}

@freezed
class Workout with _$Workout {
  const factory Workout({
    required String id,
    required String name,
    required List<ExercisePointer> exercisePointers,
    required DateTime creationDate,
    required String creatorUsername,
  }) = _Workout;
}
