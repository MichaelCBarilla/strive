import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:strive/models/workout.dart';

part 'workout_category.freezed.dart';

@freezed
class WorkoutCategory with _$WorkoutCategory {
  const factory WorkoutCategory({
    required String title,
    required List<Workout> workouts,
  }) = _WorkoutCategory;
}
