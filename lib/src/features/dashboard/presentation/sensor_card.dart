import 'package:dream_home/src/common_widgets/feed_icon.dart';
import 'package:dream_home/src/features/dashboard/data/feed_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';
import 'feed_card.dart';
import 'gauge.dart';

class SensorCardLarge extends FeedCard {
  const SensorCardLarge({
    Key? key,
    required Feed feed,
  }) : super(key: key, feed: feed);

  static const feedMins = {
    FeedType.TEMPERATURE: 10.0,
    FeedType.HUMIDITY: 0.0,
    // FeedType.LIGHT: 100.0,
  };

  static const feedMaxs = {
    FeedType.TEMPERATURE: 40.0,
    FeedType.HUMIDITY: 100.0,
    // FeedType.LIGHT: 1000.0,
  };

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
                      Text(
                        FeedCard.sensorUnits[feed.type]!,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Gauge(
                    value: valueAsync.value,
                    min: feedMins[feed.type]!,
                    max: feedMaxs[feed.type]!,
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
        ));
  }
}

class SensorCardMedium extends FeedCard {
  const SensorCardMedium({
    Key? key,
    required Feed feed,
  }) : super(key: key, feed: feed);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final valueAsync = ref.watch(feedValueProvider(feed));

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
              if (valueAsync.hasValue) ...[
                Text(
                  "${valueAsync.value}",
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const Text(" "),
                Text(
                  "${FeedCard.sensorUnits[feed.type]}",
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
