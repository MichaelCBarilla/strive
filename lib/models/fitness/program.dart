import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:strive/models/fitness/workout.dart';

part 'program.freezed.dart';
part 'program.g.dart';

@unfreezed
class WorkoutPointers with _$WorkoutPointers {
  factory WorkoutPointers({
    required Map<int, String> workoutIds,
  }) = _WorkoutPointers;

  factory WorkoutPointers.fromJson(Map<String, dynamic> json) =>
      _$WorkoutPointersFromJson(json);
}

@freezed
class Program with _$Program {
  const factory Program({
    required String id,
    required String name,
    required Map<int, Workout> workouts,
    required DateTime creationDate,
    required String creatorUsername,
  }) = _Program;

  factory Program.fromJson(Map<String, dynamic> json) =>
      _$ProgramFromJson(json);
}
