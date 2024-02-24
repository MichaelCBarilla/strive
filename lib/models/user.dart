import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

enum WeightType {
  pounds,
  kilograms,
}

@freezed
class Weight with _$Weight {
  const factory Weight({
    required double value,
    required WeightType weightType,
    required DateTime dateEntered,
  }) = _Weight;
}

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String title,
  }) = _User;
}
