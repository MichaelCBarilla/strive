// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutPointersImpl _$$WorkoutPointersImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkoutPointersImpl(
      workoutIds: (json['workoutIds'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$$WorkoutPointersImplToJson(
        _$WorkoutPointersImpl instance) =>
    <String, dynamic>{
      'workoutIds':
          instance.workoutIds.map((k, e) => MapEntry(k.toString(), e)),
    };

_$ProgramImpl _$$ProgramImplFromJson(Map<String, dynamic> json) =>
    _$ProgramImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      workouts: (json['workouts'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(int.parse(k), Workout.fromJson(e as Map<String, dynamic>)),
      ),
      creationDate: DateTime.parse(json['creationDate'] as String),
      creatorsUsername: json['creatorsUsername'] as String,
    );

Map<String, dynamic> _$$ProgramImplToJson(_$ProgramImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'workouts':
          instance.workouts.map((k, e) => MapEntry(k.toString(), e.toJson())),
      'creationDate': instance.creationDate.toIso8601String(),
      'creatorsUsername': instance.creatorsUsername,
    };
