// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strive_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Weight {
  double get value => throw _privateConstructorUsedError;
  WeightType get weightType => throw _privateConstructorUsedError;
  DateTime get dateEntered => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeightCopyWith<Weight> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightCopyWith<$Res> {
  factory $WeightCopyWith(Weight value, $Res Function(Weight) then) =
      _$WeightCopyWithImpl<$Res, Weight>;
  @useResult
  $Res call({double value, WeightType weightType, DateTime dateEntered});
}

/// @nodoc
class _$WeightCopyWithImpl<$Res, $Val extends Weight>
    implements $WeightCopyWith<$Res> {
  _$WeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? weightType = null,
    Object? dateEntered = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      weightType: null == weightType
          ? _value.weightType
          : weightType // ignore: cast_nullable_to_non_nullable
              as WeightType,
      dateEntered: null == dateEntered
          ? _value.dateEntered
          : dateEntered // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeightImplCopyWith<$Res> implements $WeightCopyWith<$Res> {
  factory _$$WeightImplCopyWith(
          _$WeightImpl value, $Res Function(_$WeightImpl) then) =
      __$$WeightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, WeightType weightType, DateTime dateEntered});
}

/// @nodoc
class __$$WeightImplCopyWithImpl<$Res>
    extends _$WeightCopyWithImpl<$Res, _$WeightImpl>
    implements _$$WeightImplCopyWith<$Res> {
  __$$WeightImplCopyWithImpl(
      _$WeightImpl _value, $Res Function(_$WeightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? weightType = null,
    Object? dateEntered = null,
  }) {
    return _then(_$WeightImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      weightType: null == weightType
          ? _value.weightType
          : weightType // ignore: cast_nullable_to_non_nullable
              as WeightType,
      dateEntered: null == dateEntered
          ? _value.dateEntered
          : dateEntered // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$WeightImpl implements _Weight {
  const _$WeightImpl(
      {required this.value,
      required this.weightType,
      required this.dateEntered});

  @override
  final double value;
  @override
  final WeightType weightType;
  @override
  final DateTime dateEntered;

  @override
  String toString() {
    return 'Weight(value: $value, weightType: $weightType, dateEntered: $dateEntered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.weightType, weightType) ||
                other.weightType == weightType) &&
            (identical(other.dateEntered, dateEntered) ||
                other.dateEntered == dateEntered));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, weightType, dateEntered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightImplCopyWith<_$WeightImpl> get copyWith =>
      __$$WeightImplCopyWithImpl<_$WeightImpl>(this, _$identity);
}

abstract class _Weight implements Weight {
  const factory _Weight(
      {required final double value,
      required final WeightType weightType,
      required final DateTime dateEntered}) = _$WeightImpl;

  @override
  double get value;
  @override
  WeightType get weightType;
  @override
  DateTime get dateEntered;
  @override
  @JsonKey(ignore: true)
  _$$WeightImplCopyWith<_$WeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StriveUser {
  String? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime? get birthdate => throw _privateConstructorUsedError;
  List<Weight>? get weights => throw _privateConstructorUsedError;
  DateTime? get creationDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StriveUserCopyWith<StriveUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StriveUserCopyWith<$Res> {
  factory $StriveUserCopyWith(
          StriveUser value, $Res Function(StriveUser) then) =
      _$StriveUserCopyWithImpl<$Res, StriveUser>;
  @useResult
  $Res call(
      {String? id,
      String? username,
      String? email,
      String? imageUrl,
      DateTime? birthdate,
      List<Weight>? weights,
      DateTime? creationDate});
}

/// @nodoc
class _$StriveUserCopyWithImpl<$Res, $Val extends StriveUser>
    implements $StriveUserCopyWith<$Res> {
  _$StriveUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? birthdate = freezed,
    Object? weights = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weights: freezed == weights
          ? _value.weights
          : weights // ignore: cast_nullable_to_non_nullable
              as List<Weight>?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StriveUserImplCopyWith<$Res>
    implements $StriveUserCopyWith<$Res> {
  factory _$$StriveUserImplCopyWith(
          _$StriveUserImpl value, $Res Function(_$StriveUserImpl) then) =
      __$$StriveUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? username,
      String? email,
      String? imageUrl,
      DateTime? birthdate,
      List<Weight>? weights,
      DateTime? creationDate});
}

/// @nodoc
class __$$StriveUserImplCopyWithImpl<$Res>
    extends _$StriveUserCopyWithImpl<$Res, _$StriveUserImpl>
    implements _$$StriveUserImplCopyWith<$Res> {
  __$$StriveUserImplCopyWithImpl(
      _$StriveUserImpl _value, $Res Function(_$StriveUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? birthdate = freezed,
    Object? weights = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_$StriveUserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weights: freezed == weights
          ? _value._weights
          : weights // ignore: cast_nullable_to_non_nullable
              as List<Weight>?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$StriveUserImpl implements _StriveUser {
  const _$StriveUserImpl(
      {required this.id,
      required this.username,
      required this.email,
      required this.imageUrl,
      required this.birthdate,
      required final List<Weight>? weights,
      required this.creationDate})
      : _weights = weights;

  @override
  final String? id;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? imageUrl;
  @override
  final DateTime? birthdate;
  final List<Weight>? _weights;
  @override
  List<Weight>? get weights {
    final value = _weights;
    if (value == null) return null;
    if (_weights is EqualUnmodifiableListView) return _weights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? creationDate;

  @override
  String toString() {
    return 'StriveUser(id: $id, username: $username, email: $email, imageUrl: $imageUrl, birthdate: $birthdate, weights: $weights, creationDate: $creationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StriveUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            const DeepCollectionEquality().equals(other._weights, _weights) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, imageUrl,
      birthdate, const DeepCollectionEquality().hash(_weights), creationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StriveUserImplCopyWith<_$StriveUserImpl> get copyWith =>
      __$$StriveUserImplCopyWithImpl<_$StriveUserImpl>(this, _$identity);
}

abstract class _StriveUser implements StriveUser {
  const factory _StriveUser(
      {required final String? id,
      required final String? username,
      required final String? email,
      required final String? imageUrl,
      required final DateTime? birthdate,
      required final List<Weight>? weights,
      required final DateTime? creationDate}) = _$StriveUserImpl;

  @override
  String? get id;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get imageUrl;
  @override
  DateTime? get birthdate;
  @override
  List<Weight>? get weights;
  @override
  DateTime? get creationDate;
  @override
  @JsonKey(ignore: true)
  _$$StriveUserImplCopyWith<_$StriveUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
