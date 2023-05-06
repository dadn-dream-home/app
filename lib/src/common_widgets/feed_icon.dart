import 'package:flutter/material.dart';

import '../grpc/generated/backend.pbgrpc.dart';

class FeedIcon extends StatelessWidget {
  const FeedIcon({
    Key? key,
    required this.feed,
  }) : super(key: key);

  final Feed feed;

  static const icons = {
    FeedType.TEMPERATURE: Icon(Icons.thermostat_outlined, color: Colors.red),
    FeedType.HUMIDITY: Icon(Icons.water_drop_outlined, color: Colors.cyan),
    FeedType.LIGHT: Icon(Icons.lightbulb_outline, color: Colors.amber),
  };

  @override
  Widget build(BuildContext context) {
    return icons[feed.type]!;
  }
}