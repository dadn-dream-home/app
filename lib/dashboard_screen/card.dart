import 'package:dream_home/dashboard_screen/gauge.dart';
import 'package:dream_home/models/data_point.dart';
import 'package:flutter/material.dart';

class DataPointCard extends StatelessWidget {
  const DataPointCard({
    super.key,
    required this.name,
    required this.value,
  });

  final String name;
  final DataPoint value;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Gauge(
                color: Colors.amber,
                value: value,
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(top: 20.0),
              child: const Text(
                "Notification - OFF",
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(top: 15.0),
              child: const Text(
                "🌡️ Temperature",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(top: 5.0),
              child: const Text(
                "Above 30°C - Too high",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ])),
    );
  }
}
