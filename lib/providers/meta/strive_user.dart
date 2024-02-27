import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:strive/models/meta/strive_user.dart';

part 'strive_user.g.dart';

@riverpod
class StriveUserNotifier extends _$StriveUserNotifier {
  @override
  StriveUser build() {
    ref.keepAlive();

    return const StriveUser(
      id: null,
      username: null,
      email: null,
      imageUrl: null,
      birthdate: null,
      weights: null,
      creationDate: null,
    );
  }

  void setUser(
    String newId,
    String newUsername,
    String newEmail,
    String newImageUrl,
    DateTime newBirthdate,
    List<Weight> newWeights,
    DateTime newCreationDate,
  ) {
    state = state.copyWith(
      id: newId,
      username: newUsername,
      email: newEmail,
      imageUrl: newImageUrl,
      birthdate: newBirthdate,
      weights: newWeights,
      creationDate: newCreationDate,
    );
  }

  void clearUser() {
    state = state.copyWith(
      id: null,
      username: null,
      email: null,
      imageUrl: null,
      birthdate: null,
      weights: null,
      creationDate: null,
    );
  }
}
