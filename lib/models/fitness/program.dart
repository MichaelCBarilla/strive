import 'package:freezed_annotation/freezed_annotation.dart';

part 'program.freezed.dart';
part 'program.g.dart';

@freezed
class WorkoutPointer with _$WorkoutPointer {
  const factory WorkoutPointer({
    required String workoutId,
    required int positionInProgram,
  }) = _WorkoutPointer;

  factory WorkoutPointer.fromJson(Map<String, dynamic> json) =>
      _$WorkoutPointerFromJson(json);
}

@freezed
class Program with _$Program {
  const factory Program({
    required String id,
    required String name,
    required List<WorkoutPointer> workoutPointers,
    required DateTime creationDate,
    required String creatorUsername,
  }) = _Program;

  factory Program.fromJson(Map<String, dynamic> json) =>
      _$ProgramFromJson(json);
}
