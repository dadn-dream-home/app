import 'package:dream_home/src/extensions/feed.dart';
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

  @override
  Widget buildLarge(BuildContext context, WidgetRef ref) {
    final valueAsync = ref.watch(sensorValueProvider(feed));

    return valueAsync.when(
      data: (value) => Gauge(
        value: value,
        min: feed.type.min(),
        max: feed.type.max(),
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
              text: feed.type.unit(),
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
