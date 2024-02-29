import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'strive_user.freezed.dart';
part 'strive_user.g.dart';

enum WeightType {
  pounds,
  kilograms,
}

@freezed
class Weight with _$Weight {
  const factory Weight({
    required double value,
    required WeightType weightType,
    @TimestampOrNullConverter() required DateTime? dateEntered,
  }) = _Weight;

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
}

@freezed
class StriveUser with _$StriveUser {
  const factory StriveUser({
    required String? id,
    required String? username,
    required String? email,
    required String? imageUrl,
    @TimestampOrNullConverter() required DateTime? birthdate,
    required List<Weight>? weights,
    @TimestampOrNullConverter() required DateTime? creationDate,
    required List<String> savedExercises,
  }) = _StriveUser;

  factory StriveUser.fromJson(Map<String, dynamic> json) =>
      _$StriveUserFromJson(json);
}

class TimestampOrNullConverter implements JsonConverter<DateTime?, Timestamp?> {
  const TimestampOrNullConverter();

  @override
  DateTime? fromJson(Timestamp? timestamp) {
    return timestamp?.toDate();
  }

  @override
  Timestamp? toJson(DateTime? date) =>
      date == null ? null : Timestamp.fromDate(date);
}
