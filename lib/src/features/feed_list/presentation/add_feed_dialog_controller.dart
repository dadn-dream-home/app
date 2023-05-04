import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grpc/backend_provider.dart';
import '../../../grpc/generated/backend.pbgrpc.dart';
import '../data/feed_list_provider.dart';

part 'add_feed_dialog_controller.g.dart';

@riverpod
class AddFeedDialogController extends _$AddFeedDialogController {
  @override
  FutureOr<void> build() {
    //
  }

  void onCancel(BuildContext context) {
    Navigator.of(context).pop();
  }

  Future<void> onAdd(
      BuildContext context, TextEditingController inputController) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      await ref.read(backendProvider).createFeed(CreateFeedRequest(
            id: inputController.text,
          ));
    });

    state.whenData((_) => onDone(context));
  }

  void onDone(BuildContext context) {
    ref.invalidate(feedListProvider);
    Navigator.of(context).pop();
  }
}
