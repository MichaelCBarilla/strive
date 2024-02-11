// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkoutCategory {
  String get title => throw _privateConstructorUsedError;
  List<Workout> get workouts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutCategoryCopyWith<WorkoutCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutCategoryCopyWith<$Res> {
  factory $WorkoutCategoryCopyWith(
          WorkoutCategory value, $Res Function(WorkoutCategory) then) =
      _$WorkoutCategoryCopyWithImpl<$Res, WorkoutCategory>;
  @useResult
  $Res call({String title, List<Workout> workouts});
}

/// @nodoc
class _$WorkoutCategoryCopyWithImpl<$Res, $Val extends WorkoutCategory>
    implements $WorkoutCategoryCopyWith<$Res> {
  _$WorkoutCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? workouts = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      workouts: null == workouts
          ? _value.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutCategoryImplCopyWith<$Res>
    implements $WorkoutCategoryCopyWith<$Res> {
  factory _$$WorkoutCategoryImplCopyWith(_$WorkoutCategoryImpl value,
          $Res Function(_$WorkoutCategoryImpl) then) =
      __$$WorkoutCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<Workout> workouts});
}

/// @nodoc
class __$$WorkoutCategoryImplCopyWithImpl<$Res>
    extends _$WorkoutCategoryCopyWithImpl<$Res, _$WorkoutCategoryImpl>
    implements _$$WorkoutCategoryImplCopyWith<$Res> {
  __$$WorkoutCategoryImplCopyWithImpl(
      _$WorkoutCategoryImpl _value, $Res Function(_$WorkoutCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? workouts = null,
  }) {
    return _then(_$WorkoutCategoryImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      workouts: null == workouts
          ? _value._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
    ));
  }
}

/// @nodoc

class _$WorkoutCategoryImpl implements _WorkoutCategory {
  const _$WorkoutCategoryImpl(
      {required this.title, required final List<Workout> workouts})
      : _workouts = workouts;

  @override
  final String title;
  final List<Workout> _workouts;
  @override
  List<Workout> get workouts {
    if (_workouts is EqualUnmodifiableListView) return _workouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workouts);
  }

  @override
  String toString() {
    return 'WorkoutCategory(title: $title, workouts: $workouts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutCategoryImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._workouts, _workouts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_workouts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutCategoryImplCopyWith<_$WorkoutCategoryImpl> get copyWith =>
      __$$WorkoutCategoryImplCopyWithImpl<_$WorkoutCategoryImpl>(
          this, _$identity);
}

abstract class _WorkoutCategory implements WorkoutCategory {
  const factory _WorkoutCategory(
      {required final String title,
      required final List<Workout> workouts}) = _$WorkoutCategoryImpl;

  @override
  String get title;
  @override
  List<Workout> get workouts;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutCategoryImplCopyWith<_$WorkoutCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
