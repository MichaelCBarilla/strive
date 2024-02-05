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
mixin _$StriveUser {
  Stream<User?> get userCredential => throw _privateConstructorUsedError;

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
  $Res call({Stream<User?> userCredential});
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
    Object? userCredential = null,
  }) {
    return _then(_value.copyWith(
      userCredential: null == userCredential
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as Stream<User?>,
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
  $Res call({Stream<User?> userCredential});
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
    Object? userCredential = null,
  }) {
    return _then(_$StriveUserImpl(
      userCredential: null == userCredential
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as Stream<User?>,
    ));
  }
}

/// @nodoc

class _$StriveUserImpl implements _StriveUser {
  const _$StriveUserImpl({required this.userCredential});

  @override
  final Stream<User?> userCredential;

  @override
  String toString() {
    return 'StriveUser(userCredential: $userCredential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StriveUserImpl &&
            (identical(other.userCredential, userCredential) ||
                other.userCredential == userCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userCredential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StriveUserImplCopyWith<_$StriveUserImpl> get copyWith =>
      __$$StriveUserImplCopyWithImpl<_$StriveUserImpl>(this, _$identity);
}

abstract class _StriveUser implements StriveUser {
  const factory _StriveUser({required final Stream<User?> userCredential}) =
      _$StriveUserImpl;

  @override
  Stream<User?> get userCredential;
  @override
  @JsonKey(ignore: true)
  _$$StriveUserImplCopyWith<_$StriveUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
