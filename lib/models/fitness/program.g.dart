// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutPointerImpl _$$WorkoutPointerImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutPointerImpl(
      workoutId: json['workoutId'] as String,
      positionInProgram: json['positionInProgram'] as int,
    );

Map<String, dynamic> _$$WorkoutPointerImplToJson(
        _$WorkoutPointerImpl instance) =>
    <String, dynamic>{
      'workoutId': instance.workoutId,
      'positionInProgram': instance.positionInProgram,
    };

_$ProgramImpl _$$ProgramImplFromJson(Map<String, dynamic> json) =>
    _$ProgramImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      workoutPointers: (json['workoutPointers'] as List<dynamic>)
          .map((e) => WorkoutPointer.fromJson(e as Map<String, dynamic>))
          .toList(),
      creationDate: DateTime.parse(json['creationDate'] as String),
      creatorUsername: json['creatorUsername'] as String,
    );

Map<String, dynamic> _$$ProgramImplToJson(_$ProgramImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'workoutPointers':
          instance.workoutPointers.map((e) => e.toJson()).toList(),
      'creationDate': instance.creationDate.toIso8601String(),
      'creatorUsername': instance.creatorUsername,
    };
