import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:strive/models/fitness/exercise.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

@unfreezed
class CyclePointers with _$CyclePointers {
  factory CyclePointers({
    required Map<int, CyclePointer> cyclePointers,
  }) = _CyclePointers;

  factory CyclePointers.fromJson(Map<String, dynamic> json) =>
      _$CyclePointersFromJson(json);
}

@unfreezed
class CyclePointer with _$CyclePointer {
  factory CyclePointer({
    required Map<int, String> exerciseIds,
  }) = _CyclePointer;

  factory CyclePointer.fromJson(Map<String, dynamic> json) =>
      _$CyclePointerFromJson(json);
}

@freezed
class Cycle with _$Cycle {
  const factory Cycle({
    required Map<int, Exercise> exercises,
  }) = _Cycle;

  factory Cycle.fromJson(Map<String, dynamic> json) => _$CycleFromJson(json);
}

@freezed
class Workout with _$Workout {
  const factory Workout({
    required String id,
    required String name,
    required Map<int, Cycle> cycles,
    required DateTime creationDate,
    required String creatorsUsername,
  }) = _Workout;

  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);
}
