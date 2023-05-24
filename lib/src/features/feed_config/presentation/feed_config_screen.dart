import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../feed_list/data/feed_list_provider.dart';
import '../../navigations/presentation/sub_scaffold.dart';
import 'feed_config_form.dart';
import 'feed_config_screen_controller.dart';

class FeedConfigScreen extends ConsumerWidget {
  const FeedConfigScreen(this.feedId, {super.key});

  final String feedId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // the feeds must be there before the user natigate to the config screen
    final feed = ref.watch(feedListProvider).maybeWhen(
          data: (feeds) => feeds.firstWhere((e) => e.id == feedId),
          orElse: () => null,
        )!;

    final controller =
        ref.watch(feedConfigScreenControllerProvider(feed).notifier);

    return SubScaffold(
      title: feedId,
      actions: [
        TextButton(
          onPressed: controller.onSave,
          child: const Text("Save"),
        ),
      ],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: FeedConfigForm(feed: feed),
      ),
    );
  }
}
