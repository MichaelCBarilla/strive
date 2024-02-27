import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:strive/models/meta/app_state.dart';

part 'app_state.g.dart';

@riverpod
class AppStateNotifier extends _$AppStateNotifier {
  @override
  AppState build() {
    ref.keepAlive();

    return const AppState(
      selectedPageIndex: 0,
    );
  }

  void setSelectedPageIndex(int newSelectedPageIndex) {
    state = state.copyWith(selectedPageIndex: newSelectedPageIndex);
  }
}
