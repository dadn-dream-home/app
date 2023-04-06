import 'package:dream_home/dashboard_screen/data_point_card.dart';
import 'package:dream_home/dashboard_screen/periodic_fetching.dart';
import 'package:dream_home/models/data_point.dart';
import 'package:flutter/material.dart';

class HumidCard extends StatefulWidget {
  const HumidCard({super.key});

  @override
  State<HumidCard> createState() => _HumidCardState();
}

class _HumidCardState extends State<HumidCard> with PeriodicFetching {
  @override
  DataPoint value = DataPoint(value: 0, type: DataPointType.humidity);

  @override
  void initState() {
    super.initState();
    restartTimer();
  }

  @override
  Widget build(BuildContext context) {
    return DataPointCard(
      name: "💧 Humidity",
      value: value,
    );
  }
}
