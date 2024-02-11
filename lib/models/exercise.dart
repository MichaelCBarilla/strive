import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';

@freezed
class Range with _$Range {
  const factory Range({
    required int min,
    required int max,
  }) = _Range;
}

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required String title,
    required Range advisedRepRange,
    required Range advisedSetRange,
  }) = _Exercise;
}
