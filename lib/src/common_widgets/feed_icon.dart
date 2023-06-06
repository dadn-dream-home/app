import 'package:flutter/material.dart';

import '../grpc/generated/backend.pbgrpc.dart';

class FeedIcon extends StatelessWidget {
  const FeedIcon({
    Key? key,
    required this.feed,
    this.color,
  }) : super(key: key);

  final Feed feed;
  final Color? color;

  static const icons = {
    FeedType.TEMPERATURE: Icons.thermostat_outlined,
    FeedType.HUMIDITY: Icons.water_drop_outlined,
    FeedType.LIGHT: Icons.lightbulb_outline,
  };

  static const colors = {
    FeedType.TEMPERATURE: Colors.red,
    FeedType.HUMIDITY: Colors.cyan,
    FeedType.LIGHT: Colors.amber,
  };

  @override
  Widget build(BuildContext context) {
    final icon = icons[feed.type]!;
    final iconColor = color ?? colors[feed.type]!;
    return Icon(icon, color: iconColor);
  }
}
