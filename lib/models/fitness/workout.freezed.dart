// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExercisePointer _$ExercisePointerFromJson(Map<String, dynamic> json) {
  return _ExercisePointer.fromJson(json);
}

/// @nodoc
mixin _$ExercisePointer {
  String get id => throw _privateConstructorUsedError;
  int get positionInCycle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExercisePointerCopyWith<ExercisePointer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExercisePointerCopyWith<$Res> {
  factory $ExercisePointerCopyWith(
          ExercisePointer value, $Res Function(ExercisePointer) then) =
      _$ExercisePointerCopyWithImpl<$Res, ExercisePointer>;
  @useResult
  $Res call({String id, int positionInCycle});
}

/// @nodoc
class _$ExercisePointerCopyWithImpl<$Res, $Val extends ExercisePointer>
    implements $ExercisePointerCopyWith<$Res> {
  _$ExercisePointerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? positionInCycle = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      positionInCycle: null == positionInCycle
          ? _value.positionInCycle
          : positionInCycle // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExercisePointerImplCopyWith<$Res>
    implements $ExercisePointerCopyWith<$Res> {
  factory _$$ExercisePointerImplCopyWith(_$ExercisePointerImpl value,
          $Res Function(_$ExercisePointerImpl) then) =
      __$$ExercisePointerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int positionInCycle});
}

/// @nodoc
class __$$ExercisePointerImplCopyWithImpl<$Res>
    extends _$ExercisePointerCopyWithImpl<$Res, _$ExercisePointerImpl>
    implements _$$ExercisePointerImplCopyWith<$Res> {
  __$$ExercisePointerImplCopyWithImpl(
      _$ExercisePointerImpl _value, $Res Function(_$ExercisePointerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? positionInCycle = null,
  }) {
    return _then(_$ExercisePointerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      positionInCycle: null == positionInCycle
          ? _value.positionInCycle
          : positionInCycle // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExercisePointerImpl implements _ExercisePointer {
  const _$ExercisePointerImpl(
      {required this.id, required this.positionInCycle});

  factory _$ExercisePointerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExercisePointerImplFromJson(json);

  @override
  final String id;
  @override
  final int positionInCycle;

  @override
  String toString() {
    return 'ExercisePointer(id: $id, positionInCycle: $positionInCycle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExercisePointerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.positionInCycle, positionInCycle) ||
                other.positionInCycle == positionInCycle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, positionInCycle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExercisePointerImplCopyWith<_$ExercisePointerImpl> get copyWith =>
      __$$ExercisePointerImplCopyWithImpl<_$ExercisePointerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExercisePointerImplToJson(
      this,
    );
  }
}

abstract class _ExercisePointer implements ExercisePointer {
  const factory _ExercisePointer(
      {required final String id,
      required final int positionInCycle}) = _$ExercisePointerImpl;

  factory _ExercisePointer.fromJson(Map<String, dynamic> json) =
      _$ExercisePointerImpl.fromJson;

  @override
  String get id;
  @override
  int get positionInCycle;
  @override
  @JsonKey(ignore: true)
  _$$ExercisePointerImplCopyWith<_$ExercisePointerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CyclePointer _$CyclePointerFromJson(Map<String, dynamic> json) {
  return _CyclePointer.fromJson(json);
}

/// @nodoc
mixin _$CyclePointer {
  List<ExercisePointer> get exercisePointers =>
      throw _privateConstructorUsedError;
  int get positionInWorkout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CyclePointerCopyWith<CyclePointer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CyclePointerCopyWith<$Res> {
  factory $CyclePointerCopyWith(
          CyclePointer value, $Res Function(CyclePointer) then) =
      _$CyclePointerCopyWithImpl<$Res, CyclePointer>;
  @useResult
  $Res call({List<ExercisePointer> exercisePointers, int positionInWorkout});
}

/// @nodoc
class _$CyclePointerCopyWithImpl<$Res, $Val extends CyclePointer>
    implements $CyclePointerCopyWith<$Res> {
  _$CyclePointerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercisePointers = null,
    Object? positionInWorkout = null,
  }) {
    return _then(_value.copyWith(
      exercisePointers: null == exercisePointers
          ? _value.exercisePointers
          : exercisePointers // ignore: cast_nullable_to_non_nullable
              as List<ExercisePointer>,
      positionInWorkout: null == positionInWorkout
          ? _value.positionInWorkout
          : positionInWorkout // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CyclePointerImplCopyWith<$Res>
    implements $CyclePointerCopyWith<$Res> {
  factory _$$CyclePointerImplCopyWith(
          _$CyclePointerImpl value, $Res Function(_$CyclePointerImpl) then) =
      __$$CyclePointerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExercisePointer> exercisePointers, int positionInWorkout});
}

/// @nodoc
class __$$CyclePointerImplCopyWithImpl<$Res>
    extends _$CyclePointerCopyWithImpl<$Res, _$CyclePointerImpl>
    implements _$$CyclePointerImplCopyWith<$Res> {
  __$$CyclePointerImplCopyWithImpl(
      _$CyclePointerImpl _value, $Res Function(_$CyclePointerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercisePointers = null,
    Object? positionInWorkout = null,
  }) {
    return _then(_$CyclePointerImpl(
      exercisePointers: null == exercisePointers
          ? _value._exercisePointers
          : exercisePointers // ignore: cast_nullable_to_non_nullable
              as List<ExercisePointer>,
      positionInWorkout: null == positionInWorkout
          ? _value.positionInWorkout
          : positionInWorkout // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CyclePointerImpl implements _CyclePointer {
  const _$CyclePointerImpl(
      {required final List<ExercisePointer> exercisePointers,
      required this.positionInWorkout})
      : _exercisePointers = exercisePointers;

  factory _$CyclePointerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CyclePointerImplFromJson(json);

  final List<ExercisePointer> _exercisePointers;
  @override
  List<ExercisePointer> get exercisePointers {
    if (_exercisePointers is EqualUnmodifiableListView)
      return _exercisePointers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercisePointers);
  }

  @override
  final int positionInWorkout;

  @override
  String toString() {
    return 'CyclePointer(exercisePointers: $exercisePointers, positionInWorkout: $positionInWorkout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CyclePointerImpl &&
            const DeepCollectionEquality()
                .equals(other._exercisePointers, _exercisePointers) &&
            (identical(other.positionInWorkout, positionInWorkout) ||
                other.positionInWorkout == positionInWorkout));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exercisePointers),
      positionInWorkout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CyclePointerImplCopyWith<_$CyclePointerImpl> get copyWith =>
      __$$CyclePointerImplCopyWithImpl<_$CyclePointerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CyclePointerImplToJson(
      this,
    );
  }
}

abstract class _CyclePointer implements CyclePointer {
  const factory _CyclePointer(
      {required final List<ExercisePointer> exercisePointers,
      required final int positionInWorkout}) = _$CyclePointerImpl;

  factory _CyclePointer.fromJson(Map<String, dynamic> json) =
      _$CyclePointerImpl.fromJson;

  @override
  List<ExercisePointer> get exercisePointers;
  @override
  int get positionInWorkout;
  @override
  @JsonKey(ignore: true)
  _$$CyclePointerImplCopyWith<_$CyclePointerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Workout _$WorkoutFromJson(Map<String, dynamic> json) {
  return _Workout.fromJson(json);
}

/// @nodoc
mixin _$Workout {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<CyclePointer> get cyclePointers => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  String get creatorUsername => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutCopyWith<Workout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) =
      _$WorkoutCopyWithImpl<$Res, Workout>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<CyclePointer> cyclePointers,
      DateTime creationDate,
      String creatorUsername});
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res, $Val extends Workout>
    implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cyclePointers = null,
    Object? creationDate = null,
    Object? creatorUsername = null,
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
      cyclePointers: null == cyclePointers
          ? _value.cyclePointers
          : cyclePointers // ignore: cast_nullable_to_non_nullable
              as List<CyclePointer>,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorUsername: null == creatorUsername
          ? _value.creatorUsername
          : creatorUsername // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutImplCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$$WorkoutImplCopyWith(
          _$WorkoutImpl value, $Res Function(_$WorkoutImpl) then) =
      __$$WorkoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<CyclePointer> cyclePointers,
      DateTime creationDate,
      String creatorUsername});
}

/// @nodoc
class __$$WorkoutImplCopyWithImpl<$Res>
    extends _$WorkoutCopyWithImpl<$Res, _$WorkoutImpl>
    implements _$$WorkoutImplCopyWith<$Res> {
  __$$WorkoutImplCopyWithImpl(
      _$WorkoutImpl _value, $Res Function(_$WorkoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cyclePointers = null,
    Object? creationDate = null,
    Object? creatorUsername = null,
  }) {
    return _then(_$WorkoutImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cyclePointers: null == cyclePointers
          ? _value._cyclePointers
          : cyclePointers // ignore: cast_nullable_to_non_nullable
              as List<CyclePointer>,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorUsername: null == creatorUsername
          ? _value.creatorUsername
          : creatorUsername // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutImpl implements _Workout {
  const _$WorkoutImpl(
      {required this.id,
      required this.name,
      required final List<CyclePointer> cyclePointers,
      required this.creationDate,
      required this.creatorUsername})
      : _cyclePointers = cyclePointers;

  factory _$WorkoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<CyclePointer> _cyclePointers;
  @override
  List<CyclePointer> get cyclePointers {
    if (_cyclePointers is EqualUnmodifiableListView) return _cyclePointers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cyclePointers);
  }

  @override
  final DateTime creationDate;
  @override
  final String creatorUsername;

  @override
  String toString() {
    return 'Workout(id: $id, name: $name, cyclePointers: $cyclePointers, creationDate: $creationDate, creatorUsername: $creatorUsername)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._cyclePointers, _cyclePointers) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.creatorUsername, creatorUsername) ||
                other.creatorUsername == creatorUsername));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_cyclePointers),
      creationDate,
      creatorUsername);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutImplCopyWith<_$WorkoutImpl> get copyWith =>
      __$$WorkoutImplCopyWithImpl<_$WorkoutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutImplToJson(
      this,
    );
  }
}

abstract class _Workout implements Workout {
  const factory _Workout(
      {required final String id,
      required final String name,
      required final List<CyclePointer> cyclePointers,
      required final DateTime creationDate,
      required final String creatorUsername}) = _$WorkoutImpl;

  factory _Workout.fromJson(Map<String, dynamic> json) = _$WorkoutImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<CyclePointer> get cyclePointers;
  @override
  DateTime get creationDate;
  @override
  String get creatorUsername;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutImplCopyWith<_$WorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
