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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Range {
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RangeCopyWith<Range> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RangeCopyWith<$Res> {
  factory $RangeCopyWith(Range value, $Res Function(Range) then) =
      _$RangeCopyWithImpl<$Res, Range>;
  @useResult
  $Res call({int min, int max});
}

/// @nodoc
class _$RangeCopyWithImpl<$Res, $Val extends Range>
    implements $RangeCopyWith<$Res> {
  _$RangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RangeImplCopyWith<$Res> implements $RangeCopyWith<$Res> {
  factory _$$RangeImplCopyWith(
          _$RangeImpl value, $Res Function(_$RangeImpl) then) =
      __$$RangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int min, int max});
}

/// @nodoc
class __$$RangeImplCopyWithImpl<$Res>
    extends _$RangeCopyWithImpl<$Res, _$RangeImpl>
    implements _$$RangeImplCopyWith<$Res> {
  __$$RangeImplCopyWithImpl(
      _$RangeImpl _value, $Res Function(_$RangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_$RangeImpl(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RangeImpl implements _Range {
  const _$RangeImpl({required this.min, required this.max});

  @override
  final int min;
  @override
  final int max;

  @override
  String toString() {
    return 'Range(min: $min, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RangeImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(runtimeType, min, max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RangeImplCopyWith<_$RangeImpl> get copyWith =>
      __$$RangeImplCopyWithImpl<_$RangeImpl>(this, _$identity);
}

abstract class _Range implements Range {
  const factory _Range({required final int min, required final int max}) =
      _$RangeImpl;

  @override
  int get min;
  @override
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$RangeImplCopyWith<_$RangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Exercise {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Range get advisedRepRange => throw _privateConstructorUsedError;
  Range get advisedSetRange => throw _privateConstructorUsedError;

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
      {String id, String title, Range advisedRepRange, Range advisedSetRange});

  $RangeCopyWith<$Res> get advisedRepRange;
  $RangeCopyWith<$Res> get advisedSetRange;
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
    Object? title = null,
    Object? advisedRepRange = null,
    Object? advisedSetRange = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      advisedRepRange: null == advisedRepRange
          ? _value.advisedRepRange
          : advisedRepRange // ignore: cast_nullable_to_non_nullable
              as Range,
      advisedSetRange: null == advisedSetRange
          ? _value.advisedSetRange
          : advisedSetRange // ignore: cast_nullable_to_non_nullable
              as Range,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get advisedRepRange {
    return $RangeCopyWith<$Res>(_value.advisedRepRange, (value) {
      return _then(_value.copyWith(advisedRepRange: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res> get advisedSetRange {
    return $RangeCopyWith<$Res>(_value.advisedSetRange, (value) {
      return _then(_value.copyWith(advisedSetRange: value) as $Val);
    });
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
      {String id, String title, Range advisedRepRange, Range advisedSetRange});

  @override
  $RangeCopyWith<$Res> get advisedRepRange;
  @override
  $RangeCopyWith<$Res> get advisedSetRange;
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
    Object? title = null,
    Object? advisedRepRange = null,
    Object? advisedSetRange = null,
  }) {
    return _then(_$ExerciseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      advisedRepRange: null == advisedRepRange
          ? _value.advisedRepRange
          : advisedRepRange // ignore: cast_nullable_to_non_nullable
              as Range,
      advisedSetRange: null == advisedSetRange
          ? _value.advisedSetRange
          : advisedSetRange // ignore: cast_nullable_to_non_nullable
              as Range,
    ));
  }
}

/// @nodoc

class _$ExerciseImpl implements _Exercise {
  const _$ExerciseImpl(
      {required this.id,
      required this.title,
      required this.advisedRepRange,
      required this.advisedSetRange});

  @override
  final String id;
  @override
  final String title;
  @override
  final Range advisedRepRange;
  @override
  final Range advisedSetRange;

  @override
  String toString() {
    return 'Exercise(id: $id, title: $title, advisedRepRange: $advisedRepRange, advisedSetRange: $advisedSetRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.advisedRepRange, advisedRepRange) ||
                other.advisedRepRange == advisedRepRange) &&
            (identical(other.advisedSetRange, advisedSetRange) ||
                other.advisedSetRange == advisedSetRange));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, advisedRepRange, advisedSetRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      __$$ExerciseImplCopyWithImpl<_$ExerciseImpl>(this, _$identity);
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {required final String id,
      required final String title,
      required final Range advisedRepRange,
      required final Range advisedSetRange}) = _$ExerciseImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  Range get advisedRepRange;
  @override
  Range get advisedSetRange;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
