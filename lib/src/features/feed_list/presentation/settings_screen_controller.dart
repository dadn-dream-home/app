import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../add_feed/presentation/add_feed_dialog.dart';

part 'settings_screen_controller.g.dart';

@riverpod
class SettingsScreenController extends _$SettingsScreenController {
  @override
  FutureOr<void> build() {
    //
  }

  void createFeed(BuildContext context) {
    showDialog<String>(
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) => AddFeedDialog(),
    );
  }
}
