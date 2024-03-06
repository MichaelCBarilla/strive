// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
mixin _$Exercise {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get creatorsUsername => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  int get recommendedSetsMax => throw _privateConstructorUsedError;
  int get recommendedSetsMin => throw _privateConstructorUsedError;
  int get recommendedRepsMax => throw _privateConstructorUsedError;
  int get recommendedRepsMin => throw _privateConstructorUsedError;
  RepType get repType => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call(
      {String id,
      String name,
      String creatorsUsername,
      DateTime creationDate,
      int recommendedSetsMax,
      int recommendedSetsMin,
      int recommendedRepsMax,
      int recommendedRepsMin,
      RepType repType,
      bool isPublic});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? creatorsUsername = null,
    Object? creationDate = null,
    Object? recommendedSetsMax = null,
    Object? recommendedSetsMin = null,
    Object? recommendedRepsMax = null,
    Object? recommendedRepsMin = null,
    Object? repType = null,
    Object? isPublic = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creatorsUsername: null == creatorsUsername
          ? _value.creatorsUsername
          : creatorsUsername // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recommendedSetsMax: null == recommendedSetsMax
          ? _value.recommendedSetsMax
          : recommendedSetsMax // ignore: cast_nullable_to_non_nullable
              as int,
      recommendedSetsMin: null == recommendedSetsMin
          ? _value.recommendedSetsMin
          : recommendedSetsMin // ignore: cast_nullable_to_non_nullable
              as int,
      recommendedRepsMax: null == recommendedRepsMax
          ? _value.recommendedRepsMax
          : recommendedRepsMax // ignore: cast_nullable_to_non_nullable
              as int,
      recommendedRepsMin: null == recommendedRepsMin
          ? _value.recommendedRepsMin
          : recommendedRepsMin // ignore: cast_nullable_to_non_nullable
              as int,
      repType: null == repType
          ? _value.repType
          : repType // ignore: cast_nullable_to_non_nullable
              as RepType,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseImplCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$$ExerciseImplCopyWith(
          _$ExerciseImpl value, $Res Function(_$ExerciseImpl) then) =
      __$$ExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String creatorsUsername,
      DateTime creationDate,
      int recommendedSetsMax,
      int recommendedSetsMin,
      int recommendedRepsMax,
      int recommendedRepsMin,
      RepType repType,
      bool isPublic});
}

/// @nodoc
class __$$ExerciseImplCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$ExerciseImpl>
    implements _$$ExerciseImplCopyWith<$Res> {
  __$$ExerciseImplCopyWithImpl(
      _$ExerciseImpl _value, $Res Function(_$ExerciseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? creatorsUsername = null,
    Object? creationDate = null,
    Object? recommendedSetsMax = null,
    Object? recommendedSetsMin = null,
    Object? recommendedRepsMax = null,
    Object? recommendedRepsMin = null,
    Object? repType = null,
    Object? isPublic = null,
  }) {
    return _then(_$ExerciseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creatorsUsername: null == creatorsUsername
          ? _value.creatorsUsername
          : creatorsUsername // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recommendedSetsMax: null == recommendedSetsMax
          ? _value.recommendedSetsMax
          : recommendedSetsMax // ignore: cast_nullable_to_non_nullable
              as int,
      recommendedSetsMin: null == recommendedSetsMin
          ? _value.recommendedSetsMin
          : recommendedSetsMin // ignore: cast_nullable_to_non_nullable
              as int,
      recommendedRepsMax: null == recommendedRepsMax
          ? _value.recommendedRepsMax
          : recommendedRepsMax // ignore: cast_nullable_to_non_nullable
              as int,
      recommendedRepsMin: null == recommendedRepsMin
          ? _value.recommendedRepsMin
          : recommendedRepsMin // ignore: cast_nullable_to_non_nullable
              as int,
      repType: null == repType
          ? _value.repType
          : repType // ignore: cast_nullable_to_non_nullable
              as RepType,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseImpl implements _Exercise {
  const _$ExerciseImpl(
      {required this.id,
      required this.name,
      required this.creatorsUsername,
      required this.creationDate,
      required this.recommendedSetsMax,
      required this.recommendedSetsMin,
      required this.recommendedRepsMax,
      required this.recommendedRepsMin,
      required this.repType,
      required this.isPublic});

  factory _$ExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String creatorsUsername;
  @override
  final DateTime creationDate;
  @override
  final int recommendedSetsMax;
  @override
  final int recommendedSetsMin;
  @override
  final int recommendedRepsMax;
  @override
  final int recommendedRepsMin;
  @override
  final RepType repType;
  @override
  final bool isPublic;

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, creatorsUsername: $creatorsUsername, creationDate: $creationDate, recommendedSetsMax: $recommendedSetsMax, recommendedSetsMin: $recommendedSetsMin, recommendedRepsMax: $recommendedRepsMax, recommendedRepsMin: $recommendedRepsMin, repType: $repType, isPublic: $isPublic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.creatorsUsername, creatorsUsername) ||
                other.creatorsUsername == creatorsUsername) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.recommendedSetsMax, recommendedSetsMax) ||
                other.recommendedSetsMax == recommendedSetsMax) &&
            (identical(other.recommendedSetsMin, recommendedSetsMin) ||
                other.recommendedSetsMin == recommendedSetsMin) &&
            (identical(other.recommendedRepsMax, recommendedRepsMax) ||
                other.recommendedRepsMax == recommendedRepsMax) &&
            (identical(other.recommendedRepsMin, recommendedRepsMin) ||
                other.recommendedRepsMin == recommendedRepsMin) &&
            (identical(other.repType, repType) || other.repType == repType) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      creatorsUsername,
      creationDate,
      recommendedSetsMax,
      recommendedSetsMin,
      recommendedRepsMax,
      recommendedRepsMin,
      repType,
      isPublic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      __$$ExerciseImplCopyWithImpl<_$ExerciseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseImplToJson(
      this,
    );
  }
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {required final String id,
      required final String name,
      required final String creatorsUsername,
      required final DateTime creationDate,
      required final int recommendedSetsMax,
      required final int recommendedSetsMin,
      required final int recommendedRepsMax,
      required final int recommendedRepsMin,
      required final RepType repType,
      required final bool isPublic}) = _$ExerciseImpl;

  factory _Exercise.fromJson(Map<String, dynamic> json) =
      _$ExerciseImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get creatorsUsername;
  @override
  DateTime get creationDate;
  @override
  int get recommendedSetsMax;
  @override
  int get recommendedSetsMin;
  @override
  int get recommendedRepsMax;
  @override
  int get recommendedRepsMin;
  @override
  RepType get repType;
  @override
  bool get isPublic;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
