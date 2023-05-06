import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';
import 'actuator_card.dart';
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
    // FeedType.LIGHT: "W/m²",
  };
}
