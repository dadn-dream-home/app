import 'package:dream_home/dashboard.dart';
import 'package:dream_home/main.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('temperature widget show 37 as in prototype', (tester) async {
    await loadAppFonts();

    final builder = GoldenBuilder.column()
      ..addScenario("37", const TemperatureCard());

    await tester.pumpWidgetBuilder(MyApp(builder.build()));

    await screenMatchesGolden(tester, "temperature 37");
  });
}
