import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Necessary for code-generation to work
part 'firebase_auth.g.dart';

@riverpod
Stream<User?> firebaseAuth(FirebaseAuthRef ref) async* {
  yield* FirebaseAuth.instance.authStateChanges();
}
