import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:strive/models/fitness/workout.dart';

part 'program.freezed.dart';

@freezed
class Program with _$Program {
  const factory Program({
    required String id,
    required String name,
    required List<Workout> workouts,
    required DateTime creationDate,
    required String creatorUsername,
  }) = _Program;
}
