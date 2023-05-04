import 'package:dream_home/src/features/feed_list/presentation/add_feed_dialog.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
      builder: (BuildContext context) => AddFeedDialog(),
    );
  }
}
