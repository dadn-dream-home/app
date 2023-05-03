import 'package:dream_home/dashboard_screen/gauge.dart';
import 'package:dream_home/models/data_point.dart';
import 'package:dream_home/widgets/card.dart';
import 'package:flutter/material.dart' hide Threshold;

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
    final threshold = value.getThreshold();

    return MyCard(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Gauge(
            color: threshold.color,
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
          child: Text(
            name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          margin: const EdgeInsetsDirectional.only(top: 5.0),
          child: _DataPointDescription(value: value),
        ),
      ]),
    );
  }
}

class _DataPointDescription extends StatelessWidget {
  const _DataPointDescription({required this.value});

  final DataPoint value;

  @override
  Widget build(BuildContext context) {
    final threshold = value.getThreshold();
    final dir = threshold.isAbove ? "Above" : "Below";

    return Text.rich(TextSpan(
      children: [
        TextSpan(
          text: value.type == DataPointType.temperature
              ? "$dir ${threshold.value}°C - "
              : "$dir ${threshold.value}% - ",
        ),
        TextSpan(
            text: threshold.description,
            style: TextStyle(
              color: threshold.color,
            ))
      ],
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      ),
    ));
  }
}
