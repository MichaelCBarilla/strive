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

/// @nodoc
mixin _$ExercisePointer {
  List<String> get ids => throw _privateConstructorUsedError;
  int get workoutPosition => throw _privateConstructorUsedError;

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
  $Res call({List<String> ids, int workoutPosition});
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
    Object? ids = null,
    Object? workoutPosition = null,
  }) {
    return _then(_value.copyWith(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workoutPosition: null == workoutPosition
          ? _value.workoutPosition
          : workoutPosition // ignore: cast_nullable_to_non_nullable
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
  $Res call({List<String> ids, int workoutPosition});
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
    Object? ids = null,
    Object? workoutPosition = null,
  }) {
    return _then(_$ExercisePointerImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workoutPosition: null == workoutPosition
          ? _value.workoutPosition
          : workoutPosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExercisePointerImpl implements _ExercisePointer {
  const _$ExercisePointerImpl(
      {required final List<String> ids, required this.workoutPosition})
      : _ids = ids;

  final List<String> _ids;
  @override
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  final int workoutPosition;

  @override
  String toString() {
    return 'ExercisePointer(ids: $ids, workoutPosition: $workoutPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExercisePointerImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            (identical(other.workoutPosition, workoutPosition) ||
                other.workoutPosition == workoutPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ids), workoutPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExercisePointerImplCopyWith<_$ExercisePointerImpl> get copyWith =>
      __$$ExercisePointerImplCopyWithImpl<_$ExercisePointerImpl>(
          this, _$identity);
}

abstract class _ExercisePointer implements ExercisePointer {
  const factory _ExercisePointer(
      {required final List<String> ids,
      required final int workoutPosition}) = _$ExercisePointerImpl;

  @override
  List<String> get ids;
  @override
  int get workoutPosition;
  @override
  @JsonKey(ignore: true)
  _$$ExercisePointerImplCopyWith<_$ExercisePointerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Workout {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ExercisePointer> get exercisePointers =>
      throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  String get creatorUsername => throw _privateConstructorUsedError;

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
      List<ExercisePointer> exercisePointers,
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
    Object? exercisePointers = null,
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
      exercisePointers: null == exercisePointers
          ? _value.exercisePointers
          : exercisePointers // ignore: cast_nullable_to_non_nullable
              as List<ExercisePointer>,
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
      List<ExercisePointer> exercisePointers,
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
    Object? exercisePointers = null,
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
      exercisePointers: null == exercisePointers
          ? _value._exercisePointers
          : exercisePointers // ignore: cast_nullable_to_non_nullable
              as List<ExercisePointer>,
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

class _$WorkoutImpl implements _Workout {
  const _$WorkoutImpl(
      {required this.id,
      required this.name,
      required final List<ExercisePointer> exercisePointers,
      required this.creationDate,
      required this.creatorUsername})
      : _exercisePointers = exercisePointers;

  @override
  final String id;
  @override
  final String name;
  final List<ExercisePointer> _exercisePointers;
  @override
  List<ExercisePointer> get exercisePointers {
    if (_exercisePointers is EqualUnmodifiableListView)
      return _exercisePointers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercisePointers);
  }

  @override
  final DateTime creationDate;
  @override
  final String creatorUsername;

  @override
  String toString() {
    return 'Workout(id: $id, name: $name, exercisePointers: $exercisePointers, creationDate: $creationDate, creatorUsername: $creatorUsername)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._exercisePointers, _exercisePointers) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.creatorUsername, creatorUsername) ||
                other.creatorUsername == creatorUsername));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_exercisePointers),
      creationDate,
      creatorUsername);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutImplCopyWith<_$WorkoutImpl> get copyWith =>
      __$$WorkoutImplCopyWithImpl<_$WorkoutImpl>(this, _$identity);
}

abstract class _Workout implements Workout {
  const factory _Workout(
      {required final String id,
      required final String name,
      required final List<ExercisePointer> exercisePointers,
      required final DateTime creationDate,
      required final String creatorUsername}) = _$WorkoutImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<ExercisePointer> get exercisePointers;
  @override
  DateTime get creationDate;
  @override
  String get creatorUsername;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutImplCopyWith<_$WorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
