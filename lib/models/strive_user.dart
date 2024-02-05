import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'strive_user.freezed.dart';

@freezed
class StriveUser with _$StriveUser {
  const factory StriveUser({
    required Stream<User?> userCredential,
  }) = _StriveUser;
}
