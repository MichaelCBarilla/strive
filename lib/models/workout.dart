import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:strive/models/exercise.dart';

part 'workout.freezed.dart';

@freezed
class Workout with _$Workout {
  const factory Workout({
    required String title,
    required List<Exercise> exercises,
  }) = _Workout;
}
