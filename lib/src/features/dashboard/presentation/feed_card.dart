import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../common_widgets/feed_icon.dart';
import '../../../grpc/generated/backend.pbgrpc.dart';
import 'actuator_card.dart';
import 'feed_card_controller.dart';
import 'sensor_card.dart';

abstract class FeedCard extends ConsumerWidget {
  const FeedCard({
    super.key,
    required this.feed,
  });

  factory FeedCard.large({Key? key, required Feed feed}) {
    switch (feed.type) {
      case FeedType.TEMPERATURE:
      case FeedType.HUMIDITY:
        return SensorCardLarge(key: key, feed: feed);
      case FeedType.LIGHT:
        return ActuatorCardLarge(key: key, feed: feed);
      default:
        throw UnimplementedError("Feed type ${feed.type} not implemented");
    }
  }

  factory FeedCard.medium({Key? key, required Feed feed}) {
    switch (feed.type) {
      case FeedType.TEMPERATURE:
      case FeedType.HUMIDITY:
        return SensorCardMedium(key: key, feed: feed);
      case FeedType.LIGHT:
        return ActuatorCardMedium(key: key, feed: feed);
      default:
        throw UnimplementedError("Feed type ${feed.type} not implemented");
    }
  }

  final Feed feed;

  static const sensorUnits = {
    FeedType.TEMPERATURE: "°C",
    FeedType.HUMIDITY: "%",
  };
}

abstract class FeedCardLarge extends FeedCard {
  const FeedCardLarge({
    super.key,
    required Feed feed,
  }) : super(feed: feed);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(feedCardControllerProvider(feed).notifier);

    return StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: InkWell(
        onTap: () => controller.onTap(context),
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      FeedIcon(feed: feed),
                      const Spacer(),
                      Text(
                        FeedCard.sensorUnits[feed.type] ?? "",
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: buildLarge(context, ref),
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
      ),
    );
  }

  Widget buildLarge(BuildContext context, WidgetRef ref);
}

abstract class FeedCardMedium extends FeedCard {
  const FeedCardMedium({
    super.key,
    required Feed feed,
  }) : super(feed: feed);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(feedCardControllerProvider(feed).notifier);

    return StaggeredGridTile.count(
      crossAxisCellCount: 4,
      mainAxisCellCount: 1,
      child: InkWell(
        onTap: () => controller.onTap(context),
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
                buildMedium(context, ref),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMedium(BuildContext context, WidgetRef ref);
}
