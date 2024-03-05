// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkoutPointers _$WorkoutPointersFromJson(Map<String, dynamic> json) {
  return _WorkoutPointers.fromJson(json);
}

/// @nodoc
mixin _$WorkoutPointers {
  Map<int, String> get workoutIds => throw _privateConstructorUsedError;
  set workoutIds(Map<int, String> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutPointersCopyWith<WorkoutPointers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutPointersCopyWith<$Res> {
  factory $WorkoutPointersCopyWith(
          WorkoutPointers value, $Res Function(WorkoutPointers) then) =
      _$WorkoutPointersCopyWithImpl<$Res, WorkoutPointers>;
  @useResult
  $Res call({Map<int, String> workoutIds});
}

/// @nodoc
class _$WorkoutPointersCopyWithImpl<$Res, $Val extends WorkoutPointers>
    implements $WorkoutPointersCopyWith<$Res> {
  _$WorkoutPointersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutIds = null,
  }) {
    return _then(_value.copyWith(
      workoutIds: null == workoutIds
          ? _value.workoutIds
          : workoutIds // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutPointersImplCopyWith<$Res>
    implements $WorkoutPointersCopyWith<$Res> {
  factory _$$WorkoutPointersImplCopyWith(_$WorkoutPointersImpl value,
          $Res Function(_$WorkoutPointersImpl) then) =
      __$$WorkoutPointersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, String> workoutIds});
}

/// @nodoc
class __$$WorkoutPointersImplCopyWithImpl<$Res>
    extends _$WorkoutPointersCopyWithImpl<$Res, _$WorkoutPointersImpl>
    implements _$$WorkoutPointersImplCopyWith<$Res> {
  __$$WorkoutPointersImplCopyWithImpl(
      _$WorkoutPointersImpl _value, $Res Function(_$WorkoutPointersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutIds = null,
  }) {
    return _then(_$WorkoutPointersImpl(
      workoutIds: null == workoutIds
          ? _value.workoutIds
          : workoutIds // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutPointersImpl implements _WorkoutPointers {
  _$WorkoutPointersImpl({required this.workoutIds});

  factory _$WorkoutPointersImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutPointersImplFromJson(json);

  @override
  Map<int, String> workoutIds;

  @override
  String toString() {
    return 'WorkoutPointers(workoutIds: $workoutIds)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutPointersImplCopyWith<_$WorkoutPointersImpl> get copyWith =>
      __$$WorkoutPointersImplCopyWithImpl<_$WorkoutPointersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutPointersImplToJson(
      this,
    );
  }
}

abstract class _WorkoutPointers implements WorkoutPointers {
  factory _WorkoutPointers({required Map<int, String> workoutIds}) =
      _$WorkoutPointersImpl;

  factory _WorkoutPointers.fromJson(Map<String, dynamic> json) =
      _$WorkoutPointersImpl.fromJson;

  @override
  Map<int, String> get workoutIds;
  set workoutIds(Map<int, String> value);
  @override
  @JsonKey(ignore: true)
  _$$WorkoutPointersImplCopyWith<_$WorkoutPointersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Program _$ProgramFromJson(Map<String, dynamic> json) {
  return _Program.fromJson(json);
}

/// @nodoc
mixin _$Program {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Map<int, Workout> get workouts => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  String get creatorsUsername => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramCopyWith<Program> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramCopyWith<$Res> {
  factory $ProgramCopyWith(Program value, $Res Function(Program) then) =
      _$ProgramCopyWithImpl<$Res, Program>;
  @useResult
  $Res call(
      {String id,
      String name,
      Map<int, Workout> workouts,
      DateTime creationDate,
      String creatorsUsername});
}

/// @nodoc
class _$ProgramCopyWithImpl<$Res, $Val extends Program>
    implements $ProgramCopyWith<$Res> {
  _$ProgramCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? workouts = null,
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
      workouts: null == workouts
          ? _value.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as Map<int, Workout>,
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
abstract class _$$ProgramImplCopyWith<$Res> implements $ProgramCopyWith<$Res> {
  factory _$$ProgramImplCopyWith(
          _$ProgramImpl value, $Res Function(_$ProgramImpl) then) =
      __$$ProgramImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Map<int, Workout> workouts,
      DateTime creationDate,
      String creatorsUsername});
}

/// @nodoc
class __$$ProgramImplCopyWithImpl<$Res>
    extends _$ProgramCopyWithImpl<$Res, _$ProgramImpl>
    implements _$$ProgramImplCopyWith<$Res> {
  __$$ProgramImplCopyWithImpl(
      _$ProgramImpl _value, $Res Function(_$ProgramImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? workouts = null,
    Object? creationDate = null,
    Object? creatorsUsername = null,
  }) {
    return _then(_$ProgramImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      workouts: null == workouts
          ? _value._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as Map<int, Workout>,
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
class _$ProgramImpl implements _Program {
  const _$ProgramImpl(
      {required this.id,
      required this.name,
      required final Map<int, Workout> workouts,
      required this.creationDate,
      required this.creatorsUsername})
      : _workouts = workouts;

  factory _$ProgramImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final Map<int, Workout> _workouts;
  @override
  Map<int, Workout> get workouts {
    if (_workouts is EqualUnmodifiableMapView) return _workouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_workouts);
  }

  @override
  final DateTime creationDate;
  @override
  final String creatorsUsername;

  @override
  String toString() {
    return 'Program(id: $id, name: $name, workouts: $workouts, creationDate: $creationDate, creatorsUsername: $creatorsUsername)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._workouts, _workouts) &&
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
      const DeepCollectionEquality().hash(_workouts),
      creationDate,
      creatorsUsername);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramImplCopyWith<_$ProgramImpl> get copyWith =>
      __$$ProgramImplCopyWithImpl<_$ProgramImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramImplToJson(
      this,
    );
  }
}

abstract class _Program implements Program {
  const factory _Program(
      {required final String id,
      required final String name,
      required final Map<int, Workout> workouts,
      required final DateTime creationDate,
      required final String creatorsUsername}) = _$ProgramImpl;

  factory _Program.fromJson(Map<String, dynamic> json) = _$ProgramImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Map<int, Workout> get workouts;
  @override
  DateTime get creationDate;
  @override
  String get creatorsUsername;
  @override
  @JsonKey(ignore: true)
  _$$ProgramImplCopyWith<_$ProgramImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
