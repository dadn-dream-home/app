import 'package:dream_home/dashboard_screen/data_point_card.dart';
import 'package:dream_home/dashboard_screen/periodic_fetching.dart';
import 'package:dream_home/models/data_point.dart';
import 'package:flutter/material.dart';

class HumidPointDisplay extends StatefulWidget {
  const HumidPointDisplay({super.key});

  @override
  State<HumidPointDisplay> createState() => _HumidPointDisplayState();
}

class _HumidPointDisplayState extends State<HumidPointDisplay>
    with PeriodicFetching {
  @override
  void initState() {
    super.initState();
    value = DataPoint(value: 0, type: DataPointType.humidity);
    restartFetching();
  }

  @override
  Widget build(BuildContext context) {
    return DataPointCard(
      name: "💧 Humidity",
      value: value,
    );
  }
}
