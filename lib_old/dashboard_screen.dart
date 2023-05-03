import 'package:dream_home/dashboard_screen/humidity_point_display.dart';
import 'package:dream_home/dashboard_screen/temperature_point_display.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(child: HumidPointDisplay()),
            Expanded(child: HumidPointDisplay()),
          ],
        ),
        const TemperaturePointDisplay(),
      ],
    );
  }
}
