import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';

enum RepType {
  count,
  duration,
}

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required String id,
    required String name,
    required String creatorsUsername,
    required DateTime creationDate,
    required int recommendedSetsMax,
    required int recommendedSetsMin,
    required int recommendedRepsMax,
    required int recommendedRepsMin,
    required RepType repType,
  }) = _Exercise;
}
