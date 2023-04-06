import 'package:dream_home/dashboard_screen/data_point_card.dart';
import 'package:dream_home/models/data_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('temperature widget show 37 as in prototype', (tester) async {
    await tester.pumpWidget(ltr(const DataPointCard(
      name: "🌡️ Temperature",
      value: DataPoint(value: 37.0, type: DataPointType.temperature),
    )));

    expect(find.textContaining("Temperature"), findsOneWidget);
  });

  testWidgets('temperature thresholds should yield correct labels',
      (tester) async {
    for (final entry in {
      15.0: "Too cold",
      22.0: "Cold",
      30.0: "Ok",
      39.0: "Hot",
      48.0: "Too hot",
    }.entries) {
      await tester.pumpWidget(ltr(DataPointCard(
        name: "🌡️ Temperature",
        value: DataPoint(value: entry.key, type: DataPointType.temperature),
      )));

      expect(
          find.textContaining(entry.value, findRichText: true), findsOneWidget);
    }
  });

  testWidgets('humidity thresholds should yield correct labels',
      (tester) async {
    for (final entry in {
      10.0: "Too dry",
      30.0: "Normal",
      50.0: "Normal",
      70.0: "Humid",
      90.0: "Wet",
    }.entries) {
      await tester.pumpWidget(ltr(DataPointCard(
        name: "💧",
        value: DataPoint(value: entry.key, type: DataPointType.humidity),
      )));

      expect(
          find.textContaining(entry.value, findRichText: true), findsOneWidget);
    }
  });
}

Widget ltr(Widget w) {
  return Directionality(textDirection: TextDirection.ltr, child: w);
}
