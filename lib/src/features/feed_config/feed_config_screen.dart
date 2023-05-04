import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/sub_scaffold.dart';
import 'feed_config_screen_controller.dart';

class FeedConfigScreen extends ConsumerWidget {
  const FeedConfigScreen(this.feedId, {super.key});

  final String feedId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(feedConfigScreenControllerProvider.notifier);
    final controllerState = ref.watch(feedConfigScreenControllerProvider);

    return SubScaffold(
      title: "Feed $feedId",
      actions: [
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => controller.deleteFeed(context, feedId),
        ),
      ],
    );
  }
}
