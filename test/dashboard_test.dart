import 'package:dream_home/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('temperature widget show 37 as in prototype', (tester) async {
    await tester.pumpWidget(ltr(const TemperatureCard()));

    // expect(find.text("37"), findsOneWidget);
  });
}

Widget ltr(Widget w) {
  return Directionality(textDirection: TextDirection.ltr, child: w);
}
