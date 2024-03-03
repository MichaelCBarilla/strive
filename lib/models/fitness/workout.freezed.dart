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

CyclePointers _$CyclePointersFromJson(Map<String, dynamic> json) {
  return _CyclePointers.fromJson(json);
}

/// @nodoc
mixin _$CyclePointers {
  Map<int, CyclePointer> get cyclePointers =>
      throw _privateConstructorUsedError;
  set cyclePointers(Map<int, CyclePointer> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CyclePointersCopyWith<CyclePointers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CyclePointersCopyWith<$Res> {
  factory $CyclePointersCopyWith(
          CyclePointers value, $Res Function(CyclePointers) then) =
      _$CyclePointersCopyWithImpl<$Res, CyclePointers>;
  @useResult
  $Res call({Map<int, CyclePointer> cyclePointers});
}

/// @nodoc
class _$CyclePointersCopyWithImpl<$Res, $Val extends CyclePointers>
    implements $CyclePointersCopyWith<$Res> {
  _$CyclePointersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cyclePointers = null,
  }) {
    return _then(_value.copyWith(
      cyclePointers: null == cyclePointers
          ? _value.cyclePointers
          : cyclePointers // ignore: cast_nullable_to_non_nullable
              as Map<int, CyclePointer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CyclePointersImplCopyWith<$Res>
    implements $CyclePointersCopyWith<$Res> {
  factory _$$CyclePointersImplCopyWith(
          _$CyclePointersImpl value, $Res Function(_$CyclePointersImpl) then) =
      __$$CyclePointersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, CyclePointer> cyclePointers});
}

/// @nodoc
class __$$CyclePointersImplCopyWithImpl<$Res>
    extends _$CyclePointersCopyWithImpl<$Res, _$CyclePointersImpl>
    implements _$$CyclePointersImplCopyWith<$Res> {
  __$$CyclePointersImplCopyWithImpl(
      _$CyclePointersImpl _value, $Res Function(_$CyclePointersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cyclePointers = null,
  }) {
    return _then(_$CyclePointersImpl(
      cyclePointers: null == cyclePointers
          ? _value.cyclePointers
          : cyclePointers // ignore: cast_nullable_to_non_nullable
              as Map<int, CyclePointer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CyclePointersImpl implements _CyclePointers {
  _$CyclePointersImpl({required this.cyclePointers});

  factory _$CyclePointersImpl.fromJson(Map<String, dynamic> json) =>
      _$$CyclePointersImplFromJson(json);

  @override
  Map<int, CyclePointer> cyclePointers;

  @override
  String toString() {
    return 'CyclePointers(cyclePointers: $cyclePointers)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CyclePointersImplCopyWith<_$CyclePointersImpl> get copyWith =>
      __$$CyclePointersImplCopyWithImpl<_$CyclePointersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CyclePointersImplToJson(
      this,
    );
  }
}

abstract class _CyclePointers implements CyclePointers {
  factory _CyclePointers({required Map<int, CyclePointer> cyclePointers}) =
      _$CyclePointersImpl;

  factory _CyclePointers.fromJson(Map<String, dynamic> json) =
      _$CyclePointersImpl.fromJson;

  @override
  Map<int, CyclePointer> get cyclePointers;
  set cyclePointers(Map<int, CyclePointer> value);
  @override
  @JsonKey(ignore: true)
  _$$CyclePointersImplCopyWith<_$CyclePointersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CyclePointer _$CyclePointerFromJson(Map<String, dynamic> json) {
  return _CyclePointer.fromJson(json);
}

/// @nodoc
mixin _$CyclePointer {
  Map<int, String> get exerciseIds => throw _privateConstructorUsedError;
  set exerciseIds(Map<int, String> value) => throw _privateConstructorUsedError;

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
  $Res call({Map<int, String> exerciseIds});
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
    Object? exerciseIds = null,
  }) {
    return _then(_value.copyWith(
      exerciseIds: null == exerciseIds
          ? _value.exerciseIds
          : exerciseIds // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
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
  $Res call({Map<int, String> exerciseIds});
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
    Object? exerciseIds = null,
  }) {
    return _then(_$CyclePointerImpl(
      exerciseIds: null == exerciseIds
          ? _value.exerciseIds
          : exerciseIds // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CyclePointerImpl implements _CyclePointer {
  _$CyclePointerImpl({required this.exerciseIds});

  factory _$CyclePointerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CyclePointerImplFromJson(json);

  @override
  Map<int, String> exerciseIds;

  @override
  String toString() {
    return 'CyclePointer(exerciseIds: $exerciseIds)';
  }

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
  factory _CyclePointer({required Map<int, String> exerciseIds}) =
      _$CyclePointerImpl;

  factory _CyclePointer.fromJson(Map<String, dynamic> json) =
      _$CyclePointerImpl.fromJson;

  @override
  Map<int, String> get exerciseIds;
  set exerciseIds(Map<int, String> value);
  @override
  @JsonKey(ignore: true)
  _$$CyclePointerImplCopyWith<_$CyclePointerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cycle _$CycleFromJson(Map<String, dynamic> json) {
  return _Cycle.fromJson(json);
}

/// @nodoc
mixin _$Cycle {
  Map<int, Exercise> get exercises => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CycleCopyWith<Cycle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CycleCopyWith<$Res> {
  factory $CycleCopyWith(Cycle value, $Res Function(Cycle) then) =
      _$CycleCopyWithImpl<$Res, Cycle>;
  @useResult
  $Res call({Map<int, Exercise> exercises});
}

/// @nodoc
class _$CycleCopyWithImpl<$Res, $Val extends Cycle>
    implements $CycleCopyWith<$Res> {
  _$CycleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
  }) {
    return _then(_value.copyWith(
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as Map<int, Exercise>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CycleImplCopyWith<$Res> implements $CycleCopyWith<$Res> {
  factory _$$CycleImplCopyWith(
          _$CycleImpl value, $Res Function(_$CycleImpl) then) =
      __$$CycleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, Exercise> exercises});
}

/// @nodoc
class __$$CycleImplCopyWithImpl<$Res>
    extends _$CycleCopyWithImpl<$Res, _$CycleImpl>
    implements _$$CycleImplCopyWith<$Res> {
  __$$CycleImplCopyWithImpl(
      _$CycleImpl _value, $Res Function(_$CycleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
  }) {
    return _then(_$CycleImpl(
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as Map<int, Exercise>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CycleImpl implements _Cycle {
  const _$CycleImpl({required final Map<int, Exercise> exercises})
      : _exercises = exercises;

  factory _$CycleImpl.fromJson(Map<String, dynamic> json) =>
      _$$CycleImplFromJson(json);

  final Map<int, Exercise> _exercises;
  @override
  Map<int, Exercise> get exercises {
    if (_exercises is EqualUnmodifiableMapView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_exercises);
  }

  @override
  String toString() {
    return 'Cycle(exercises: $exercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CycleImpl &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_exercises));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CycleImplCopyWith<_$CycleImpl> get copyWith =>
      __$$CycleImplCopyWithImpl<_$CycleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CycleImplToJson(
      this,
    );
  }
}

abstract class _Cycle implements Cycle {
  const factory _Cycle({required final Map<int, Exercise> exercises}) =
      _$CycleImpl;

  factory _Cycle.fromJson(Map<String, dynamic> json) = _$CycleImpl.fromJson;

  @override
  Map<int, Exercise> get exercises;
  @override
  @JsonKey(ignore: true)
  _$$CycleImplCopyWith<_$CycleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Workout _$WorkoutFromJson(Map<String, dynamic> json) {
  return _Workout.fromJson(json);
}

/// @nodoc
mixin _$Workout {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Map<int, Cycle> get cycles => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  String get creatorsUsername => throw _privateConstructorUsedError;

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
      Map<int, Cycle> cycles,
      DateTime creationDate,
      String creatorsUsername});
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
    Object? cycles = null,
    Object? creationDate = null,
    Object? creatorsUsername = null,
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
      cycles: null == cycles
          ? _value.cycles
          : cycles // ignore: cast_nullable_to_non_nullable
              as Map<int, Cycle>,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorsUsername: null == creatorsUsername
          ? _value.creatorsUsername
          : creatorsUsername // ignore: cast_nullable_to_non_nullable
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
      Map<int, Cycle> cycles,
      DateTime creationDate,
      String creatorsUsername});
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
    Object? cycles = null,
    Object? creationDate = null,
    Object? creatorsUsername = null,
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
      cycles: null == cycles
          ? _value._cycles
          : cycles // ignore: cast_nullable_to_non_nullable
              as Map<int, Cycle>,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorsUsername: null == creatorsUsername
          ? _value.creatorsUsername
          : creatorsUsername // ignore: cast_nullable_to_non_nullable
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
      required final Map<int, Cycle> cycles,
      required this.creationDate,
      required this.creatorsUsername})
      : _cycles = cycles;

  factory _$WorkoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final Map<int, Cycle> _cycles;
  @override
  Map<int, Cycle> get cycles {
    if (_cycles is EqualUnmodifiableMapView) return _cycles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cycles);
  }

  @override
  final DateTime creationDate;
  @override
  final String creatorsUsername;

  @override
  String toString() {
    return 'Workout(id: $id, name: $name, cycles: $cycles, creationDate: $creationDate, creatorsUsername: $creatorsUsername)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._cycles, _cycles) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.creatorsUsername, creatorsUsername) ||
                other.creatorsUsername == creatorsUsername));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_cycles),
      creationDate,
      creatorsUsername);

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
      required final Map<int, Cycle> cycles,
      required final DateTime creationDate,
      required final String creatorsUsername}) = _$WorkoutImpl;

  factory _Workout.fromJson(Map<String, dynamic> json) = _$WorkoutImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Map<int, Cycle> get cycles;
  @override
  DateTime get creationDate;
  @override
  String get creatorsUsername;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutImplCopyWith<_$WorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
