// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseImpl _$$ExerciseImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      creatorsUsername: json['creatorsUsername'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      recommendedSetsMax: json['recommendedSetsMax'] as int,
      recommendedSetsMin: json['recommendedSetsMin'] as int,
      recommendedRepsMax: json['recommendedRepsMax'] as int,
      recommendedRepsMin: json['recommendedRepsMin'] as int,
      repType: $enumDecode(_$RepTypeEnumMap, json['repType']),
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'creatorsUsername': instance.creatorsUsername,
      'creationDate': instance.creationDate.toIso8601String(),
      'recommendedSetsMax': instance.recommendedSetsMax,
      'recommendedSetsMin': instance.recommendedSetsMin,
      'recommendedRepsMax': instance.recommendedRepsMax,
      'recommendedRepsMin': instance.recommendedRepsMin,
      'repType': _$RepTypeEnumMap[instance.repType]!,
    };

const _$RepTypeEnumMap = {
  RepType.count: 'count',
  RepType.duration: 'duration',
};
