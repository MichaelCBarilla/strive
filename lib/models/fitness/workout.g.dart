// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CyclePointersImpl _$$CyclePointersImplFromJson(Map<String, dynamic> json) =>
    _$CyclePointersImpl(
      cyclePointers: (json['cyclePointers'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            int.parse(k), CyclePointer.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$CyclePointersImplToJson(_$CyclePointersImpl instance) =>
    <String, dynamic>{
      'cyclePointers': instance.cyclePointers
          .map((k, e) => MapEntry(k.toString(), e.toJson())),
    };

_$CyclePointerImpl _$$CyclePointerImplFromJson(Map<String, dynamic> json) =>
    _$CyclePointerImpl(
      exerciseIds: (json['exerciseIds'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$$CyclePointerImplToJson(_$CyclePointerImpl instance) =>
    <String, dynamic>{
      'exerciseIds':
          instance.exerciseIds.map((k, e) => MapEntry(k.toString(), e)),
    };

_$CycleImpl _$$CycleImplFromJson(Map<String, dynamic> json) => _$CycleImpl(
      exercises: (json['exercises'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            int.parse(k), Exercise.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$CycleImplToJson(_$CycleImpl instance) =>
    <String, dynamic>{
      'exercises':
          instance.exercises.map((k, e) => MapEntry(k.toString(), e.toJson())),
    };

_$WorkoutImpl _$$WorkoutImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      cycles: (json['cycles'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(int.parse(k), Cycle.fromJson(e as Map<String, dynamic>)),
      ),
      creationDate: DateTime.parse(json['creationDate'] as String),
      creatorsUsername: json['creatorsUsername'] as String,
    );

Map<String, dynamic> _$$WorkoutImplToJson(_$WorkoutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cycles':
          instance.cycles.map((k, e) => MapEntry(k.toString(), e.toJson())),
      'creationDate': instance.creationDate.toIso8601String(),
      'creatorsUsername': instance.creatorsUsername,
    };
