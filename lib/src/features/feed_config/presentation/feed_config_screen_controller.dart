import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grpc/backend_provider.dart';
import '../../../grpc/generated/backend.pbgrpc.dart';
import '../../feed_list/data/feed_list_provider.dart';
import '../data/form_key.dart';

part 'feed_config_screen_controller.g.dart';

@riverpod
class FeedConfigScreenController extends _$FeedConfigScreenController {
  @override
  FutureOr<void> build(Feed feed) {}

  Future<void> deleteFeed(BuildContext context, Feed feed) async {
    // delete feed using backendProvider
    // invalidate feedListProvider

    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(backendProvider).deleteFeed(DeleteFeedRequest(feed: feed));
    });
    state.whenData((_) => onDone(context));
  }

  void onSave() {
    ref.read(formKeyProvider(feed)).currentState!.save();
    print(ref.read(formKeyProvider(feed)).currentState!.value);
  }

  void onDone(BuildContext context) {
    ref.invalidate(feedListProvider);
    Navigator.of(context).pop();
  }
}
