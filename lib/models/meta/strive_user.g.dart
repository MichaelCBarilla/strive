// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strive_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeightImpl _$$WeightImplFromJson(Map<String, dynamic> json) => _$WeightImpl(
      value: (json['value'] as num).toDouble(),
      weightType: $enumDecode(_$WeightTypeEnumMap, json['weightType']),
      dateEntered: const TimestampOrNullConverter()
          .fromJson(json['dateEntered'] as Timestamp?),
    );

Map<String, dynamic> _$$WeightImplToJson(_$WeightImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'weightType': _$WeightTypeEnumMap[instance.weightType]!,
      'dateEntered':
          const TimestampOrNullConverter().toJson(instance.dateEntered),
    };

const _$WeightTypeEnumMap = {
  WeightType.pounds: 'pounds',
  WeightType.kilograms: 'kilograms',
};

_$StriveUserImpl _$$StriveUserImplFromJson(Map<String, dynamic> json) =>
    _$StriveUserImpl(
      id: json['id'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      imageUrl: json['imageUrl'] as String?,
      birthdate: const TimestampOrNullConverter()
          .fromJson(json['birthdate'] as Timestamp?),
      weights: (json['weights'] as List<dynamic>?)
          ?.map((e) => Weight.fromJson(e as Map<String, dynamic>))
          .toList(),
      creationDate: const TimestampOrNullConverter()
          .fromJson(json['creationDate'] as Timestamp?),
      savedExercises: (json['savedExercises'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$StriveUserImplToJson(_$StriveUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
      'birthdate': const TimestampOrNullConverter().toJson(instance.birthdate),
      'weights': instance.weights?.map((e) => e.toJson()).toList(),
      'creationDate':
          const TimestampOrNullConverter().toJson(instance.creationDate),
      'savedExercises': instance.savedExercises,
    };
