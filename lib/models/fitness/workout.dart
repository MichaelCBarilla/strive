import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

@freezed
class ExercisePointer with _$ExercisePointer {
  const factory ExercisePointer({
    required String id,
    required int positionInCycle,
  }) = _ExercisePointer;

  factory ExercisePointer.fromJson(Map<String, dynamic> json) =>
      _$ExercisePointerFromJson(json);
}

@freezed
class CyclePointer with _$CyclePointer {
  const factory CyclePointer({
    required List<ExercisePointer> exercisePointers,
    required int positionInWorkout,
  }) = _CyclePointer;

  factory CyclePointer.fromJson(Map<String, dynamic> json) =>
      _$CyclePointerFromJson(json);
}

@freezed
class Workout with _$Workout {
  const factory Workout({
    required String id,
    required String name,
    required List<CyclePointer> cyclePointers,
    required DateTime creationDate,
    required String creatorUsername,
  }) = _Workout;

  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);
}
