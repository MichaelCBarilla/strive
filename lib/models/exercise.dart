import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';

enum RepType {
  reps,
  holds,
}

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required String id,
    required String name,
    required DateTime creationDate,
    required int recommendedSetsMax,
    required int recommendedSetsMin,
    required int recommendedRepsMax,
    required int recommendedRepsMin,
    required RepType repType,
  }) = _Exercise;
}
