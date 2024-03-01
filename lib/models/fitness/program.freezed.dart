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

WorkoutPointer _$WorkoutPointerFromJson(Map<String, dynamic> json) {
  return _WorkoutPointer.fromJson(json);
}

/// @nodoc
mixin _$WorkoutPointer {
  String get workoutId => throw _privateConstructorUsedError;
  int get positionInProgram => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutPointerCopyWith<WorkoutPointer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutPointerCopyWith<$Res> {
  factory $WorkoutPointerCopyWith(
          WorkoutPointer value, $Res Function(WorkoutPointer) then) =
      _$WorkoutPointerCopyWithImpl<$Res, WorkoutPointer>;
  @useResult
  $Res call({String workoutId, int positionInProgram});
}

/// @nodoc
class _$WorkoutPointerCopyWithImpl<$Res, $Val extends WorkoutPointer>
    implements $WorkoutPointerCopyWith<$Res> {
  _$WorkoutPointerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutId = null,
    Object? positionInProgram = null,
  }) {
    return _then(_value.copyWith(
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String,
      positionInProgram: null == positionInProgram
          ? _value.positionInProgram
          : positionInProgram // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutPointerImplCopyWith<$Res>
    implements $WorkoutPointerCopyWith<$Res> {
  factory _$$WorkoutPointerImplCopyWith(_$WorkoutPointerImpl value,
          $Res Function(_$WorkoutPointerImpl) then) =
      __$$WorkoutPointerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String workoutId, int positionInProgram});
}

/// @nodoc
class __$$WorkoutPointerImplCopyWithImpl<$Res>
    extends _$WorkoutPointerCopyWithImpl<$Res, _$WorkoutPointerImpl>
    implements _$$WorkoutPointerImplCopyWith<$Res> {
  __$$WorkoutPointerImplCopyWithImpl(
      _$WorkoutPointerImpl _value, $Res Function(_$WorkoutPointerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutId = null,
    Object? positionInProgram = null,
  }) {
    return _then(_$WorkoutPointerImpl(
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String,
      positionInProgram: null == positionInProgram
          ? _value.positionInProgram
          : positionInProgram // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutPointerImpl implements _WorkoutPointer {
  const _$WorkoutPointerImpl(
      {required this.workoutId, required this.positionInProgram});

  factory _$WorkoutPointerImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutPointerImplFromJson(json);

  @override
  final String workoutId;
  @override
  final int positionInProgram;

  @override
  String toString() {
    return 'WorkoutPointer(workoutId: $workoutId, positionInProgram: $positionInProgram)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutPointerImpl &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId) &&
            (identical(other.positionInProgram, positionInProgram) ||
                other.positionInProgram == positionInProgram));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, workoutId, positionInProgram);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutPointerImplCopyWith<_$WorkoutPointerImpl> get copyWith =>
      __$$WorkoutPointerImplCopyWithImpl<_$WorkoutPointerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutPointerImplToJson(
      this,
    );
  }
}

abstract class _WorkoutPointer implements WorkoutPointer {
  const factory _WorkoutPointer(
      {required final String workoutId,
      required final int positionInProgram}) = _$WorkoutPointerImpl;

  factory _WorkoutPointer.fromJson(Map<String, dynamic> json) =
      _$WorkoutPointerImpl.fromJson;

  @override
  String get workoutId;
  @override
  int get positionInProgram;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutPointerImplCopyWith<_$WorkoutPointerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Program _$ProgramFromJson(Map<String, dynamic> json) {
  return _Program.fromJson(json);
}

/// @nodoc
mixin _$Program {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<WorkoutPointer> get workoutPointers =>
      throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  String get creatorUsername => throw _privateConstructorUsedError;

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
      List<WorkoutPointer> workoutPointers,
      DateTime creationDate,
      String creatorUsername});
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
    Object? workoutPointers = null,
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
      workoutPointers: null == workoutPointers
          ? _value.workoutPointers
          : workoutPointers // ignore: cast_nullable_to_non_nullable
              as List<WorkoutPointer>,
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
abstract class _$$ProgramImplCopyWith<$Res> implements $ProgramCopyWith<$Res> {
  factory _$$ProgramImplCopyWith(
          _$ProgramImpl value, $Res Function(_$ProgramImpl) then) =
      __$$ProgramImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<WorkoutPointer> workoutPointers,
      DateTime creationDate,
      String creatorUsername});
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
    Object? workoutPointers = null,
    Object? creationDate = null,
    Object? creatorUsername = null,
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
      workoutPointers: null == workoutPointers
          ? _value._workoutPointers
          : workoutPointers // ignore: cast_nullable_to_non_nullable
              as List<WorkoutPointer>,
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
class _$ProgramImpl implements _Program {
  const _$ProgramImpl(
      {required this.id,
      required this.name,
      required final List<WorkoutPointer> workoutPointers,
      required this.creationDate,
      required this.creatorUsername})
      : _workoutPointers = workoutPointers;

  factory _$ProgramImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<WorkoutPointer> _workoutPointers;
  @override
  List<WorkoutPointer> get workoutPointers {
    if (_workoutPointers is EqualUnmodifiableListView) return _workoutPointers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workoutPointers);
  }

  @override
  final DateTime creationDate;
  @override
  final String creatorUsername;

  @override
  String toString() {
    return 'Program(id: $id, name: $name, workoutPointers: $workoutPointers, creationDate: $creationDate, creatorUsername: $creatorUsername)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._workoutPointers, _workoutPointers) &&
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
      const DeepCollectionEquality().hash(_workoutPointers),
      creationDate,
      creatorUsername);

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
      required final List<WorkoutPointer> workoutPointers,
      required final DateTime creationDate,
      required final String creatorUsername}) = _$ProgramImpl;

  factory _Program.fromJson(Map<String, dynamic> json) = _$ProgramImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<WorkoutPointer> get workoutPointers;
  @override
  DateTime get creationDate;
  @override
  String get creatorUsername;
  @override
  @JsonKey(ignore: true)
  _$$ProgramImplCopyWith<_$ProgramImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
