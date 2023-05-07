import 'package:dream_home/src/common_widgets/async_value_ui.dart';
import 'package:dream_home/src/common_widgets/feed_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';
import '../data/actuator_state.dart';
import 'feed_card.dart';

class ActuatorCardLarge extends FeedCard {
  const ActuatorCardLarge({
    super.key,
    required Feed feed,
  }) : super(feed: feed);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(actuatorStateProvider(feed));

    ref.listen(actuatorStateProvider(feed), (_, v) {
      v.showSnackbarOnError(context);
    });

    return StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: FeedIcon(feed: feed),
              ),
              Expanded(
                child: stateAsync.when(
                  data: (value) => Switch(value: value, onChanged: (v) {}),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (e, s) => const Text(""),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                feed.id,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActuatorCardMedium extends FeedCard {
  const ActuatorCardMedium({
    super.key,
    required Feed feed,
  }) : super(feed: feed);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(actuatorStateProvider(feed));

    return StaggeredGridTile.count(
      crossAxisCellCount: 4,
      mainAxisCellCount: 1,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              FeedIcon(feed: feed),
              const SizedBox(width: 16),
              Text(
                feed.id,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              const Spacer(),
              stateAsync.when(
                data: (value) => Switch(value: value, onChanged: (v) {}),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (e, s) => const Text(""),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
