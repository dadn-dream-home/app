import 'package:dream_home/src/features/dashboard/data/sensor_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';
import 'feed_card.dart';
import 'gauge.dart';

class SensorCardLarge extends FeedCardLarge {
  const SensorCardLarge({
    super.key,
    required Feed feed,
  }) : super(feed: feed);

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
  Widget buildLarge(BuildContext context, WidgetRef ref) {
    final valueAsync = ref.watch(sensorValueProvider(feed));

    return valueAsync.when(
      data: (value) => Gauge(
        value: value,
        min: feedMins[feed.type]!,
        max: feedMaxs[feed.type]!,
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, s) => const Text(""),
    );
  }
}

class SensorCardMedium extends FeedCardMedium {
  const SensorCardMedium({
    super.key,
    required Feed feed,
  }) : super(feed: feed);

  @override
  Widget buildMedium(BuildContext context, WidgetRef ref) {
    final valueAsync = ref.watch(sensorValueProvider(feed));
    return valueAsync.when(
      data: (value) => RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "${valueAsync.value}",
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            const TextSpan(text: " "),
            TextSpan(
              text: "${FeedCard.sensorUnits[feed.type]}",
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, s) => const Text(""),
    );
  }
}
