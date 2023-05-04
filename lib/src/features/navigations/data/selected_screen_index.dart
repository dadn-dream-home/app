import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_screen_index.g.dart';

@riverpod
class SelectedScreenIndex extends _$SelectedScreenIndex {
  @override
  int build() {
    return 0;
  }

  void set(int value) {
    state = value;
  }
}