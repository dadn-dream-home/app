import 'package:dream_home/src/common_widgets/feed_icon.dart';
import 'package:dream_home/src/features/dashboard/data/feed_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';
import 'gauge.dart';

abstract class FeedCard extends ConsumerWidget {
  const FeedCard({
    super.key,
    required this.feed,
  });

  factory FeedCard.large({Key? key, required Feed feed}) =>
      FeedCardLarge(key: key, feed: feed);

  factory FeedCard.medium({Key? key, required Feed feed}) =>
      FeedCardMedium(key: key, feed: feed);

  final Feed feed;

  static const feedUnits = {
    FeedType.TEMPERATURE: "°C",
    FeedType.HUMIDITY: "%",
    FeedType.LIGHT: "W/m²",
  };
}

class FeedCardLarge extends FeedCard {
  const FeedCardLarge({
    Key? key,
    required Feed feed,
  }) : super(key: key, feed: feed);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final valueAsync = ref.watch(feedValueProvider(feed));

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
                  child: Row(
                    children: [
                      FeedIcon(feed: feed),
                      const Spacer(),
                      Text(FeedCard.feedUnits[feed.type]!,
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                Expanded(
                  child: Gauge(
                    color: Colors.green,
                    value: valueAsync.value,
                    min: 0,
                    max: 100,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  feed.id,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class FeedCardMedium extends FeedCard {
  const FeedCardMedium({
    Key? key,
    required Feed feed,
  }) : super(key: key, feed: feed);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              const Spacer(),
              Text("34 ${FeedCard.feedUnits[feed.type]}"),
            ],
          ),
        ),
      ),
    );
  }
}
