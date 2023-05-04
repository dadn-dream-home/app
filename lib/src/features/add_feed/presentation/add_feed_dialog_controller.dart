import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grpc/backend_provider.dart';
import '../../../grpc/generated/backend.pbgrpc.dart';
import '../../feed_list/data/feed_list_provider.dart';
import '../data/feed_id_text_controller.dart';
import '../data/selected_feed_type.dart';

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

  Future<void> add(BuildContext context) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      await ref.read(backendProvider).createFeed(CreateFeedRequest(
            id: ref.read(feedIdTextControllerProvider).text,
            type: ref.read(selectedFeedTypeProvider),
          ));
    });
    state.whenData((_) => onDone(context));
  }

  void onDone(BuildContext context) {
    ref.invalidate(feedListProvider);
    Navigator.of(context).pop();
  }
}
