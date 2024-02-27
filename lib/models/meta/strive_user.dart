import 'package:freezed_annotation/freezed_annotation.dart';

part 'strive_user.freezed.dart';

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
class StriveUser with _$StriveUser {
  const factory StriveUser({
    required String? id,
    required String? username,
    required String? email,
    required String? imageUrl,
    required DateTime? birthdate,
    required List<Weight>? weights,
    required DateTime? creationDate,
  }) = _StriveUser;
}
