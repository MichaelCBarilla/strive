// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExercisePointerImpl _$$ExercisePointerImplFromJson(
        Map<String, dynamic> json) =>
    _$ExercisePointerImpl(
      id: json['id'] as String,
      positionInCycle: json['positionInCycle'] as int,
    );

Map<String, dynamic> _$$ExercisePointerImplToJson(
        _$ExercisePointerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'positionInCycle': instance.positionInCycle,
    };

_$CyclePointerImpl _$$CyclePointerImplFromJson(Map<String, dynamic> json) =>
    _$CyclePointerImpl(
      exercisePointers: (json['exercisePointers'] as List<dynamic>)
          .map((e) => ExercisePointer.fromJson(e as Map<String, dynamic>))
          .toList(),
      positionInWorkout: json['positionInWorkout'] as int,
    );

Map<String, dynamic> _$$CyclePointerImplToJson(_$CyclePointerImpl instance) =>
    <String, dynamic>{
      'exercisePointers':
          instance.exercisePointers.map((e) => e.toJson()).toList(),
      'positionInWorkout': instance.positionInWorkout,
    };

_$WorkoutImpl _$$WorkoutImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      cyclePointers: (json['cyclePointers'] as List<dynamic>)
          .map((e) => CyclePointer.fromJson(e as Map<String, dynamic>))
          .toList(),
      creationDate: DateTime.parse(json['creationDate'] as String),
      creatorsUsername: json['creatorsUsername'] as String,
    );

Map<String, dynamic> _$$WorkoutImplToJson(_$WorkoutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cyclePointers': instance.cyclePointers.map((e) => e.toJson()).toList(),
      'creationDate': instance.creationDate.toIso8601String(),
      'creatorsUsername': instance.creatorsUsername,
    };
