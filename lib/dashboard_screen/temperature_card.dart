import 'package:dream_home/dashboard_screen/data_point_card.dart';
import 'package:dream_home/dashboard_screen/periodic_fetching.dart';
import 'package:dream_home/models/data_point.dart';
import 'package:flutter/material.dart';

class TemperatureCard extends StatefulWidget {
  const TemperatureCard({super.key});

  @override
  State<TemperatureCard> createState() => _TemperatureCardState();
}

class _TemperatureCardState extends State<TemperatureCard>
    with PeriodicFetching {
  @override
  DataPoint value = DataPoint(value: 0, type: DataPointType.temperature);

  @override
  void initState() {
    super.initState();
    restartFetching();
  }

  @override
  Widget build(BuildContext context) {
    return DataPointCard(
      name: "🌡️ Temperature",
      value: value,
    );
  }
}
