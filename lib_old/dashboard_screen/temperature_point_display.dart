import 'package:dream_home/dashboard_screen/data_point_card.dart';
import 'package:dream_home/dashboard_screen/periodic_fetching.dart';
import 'package:dream_home/models/data_point.dart';
import 'package:flutter/material.dart';

class TemperaturePointDisplay extends StatefulWidget {
  const TemperaturePointDisplay({super.key});

  @override
  State<TemperaturePointDisplay> createState() =>
      _TemperaturePointDisplayState();
}

class _TemperaturePointDisplayState extends State<TemperaturePointDisplay>
    with PeriodicFetching {
  @override
  void initState() {
    super.initState();
    value = DataPoint(value: 0, type: DataPointType.temperature);
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
