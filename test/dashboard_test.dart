import 'package:dream_home/dashboard.dart';
import 'package:dream_home/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testWidgets('temperature widget show 37 as in prototype', (tester) async {
    await tester.pumpWidgetBuilder(
      const TemperatureCard(),
      wrapper: MyApp.new,
    );

    expect(find.text("37"), findsOneWidget);
  });
}
