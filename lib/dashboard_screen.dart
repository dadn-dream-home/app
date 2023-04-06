import 'dart:async';

import 'package:dream_home/dashboard_screen/card.dart';
import 'package:dream_home/models/data_point.dart';
import 'package:dream_home/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.account_circle_outlined),
        title: const Text(
          "Dream Home",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        titleTextStyle: GoogleFonts.fraunces(
          fontSize: 20,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: const BottomNav(),
      body: SingleChildScrollView(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            TemperatureCard(),
            HumidCard(), // added HumidCard here
          ],
        ),
      ),
    );
  }
}

class TemperatureCard extends StatefulWidget {
  const TemperatureCard({super.key});

  @override
  State<TemperatureCard> createState() => _TemperatureCardState();
}

class _TemperatureCardState extends State<TemperatureCard>
    with PeriodicFetching {
  @override
  DataPoint value = DataPoint(value: 0, type: DataPointType.temperature);

  @override
  void initState() {
    super.initState();
    restartTimer();
  }

  @override
  Widget build(BuildContext context) {
    return DataPointCard(
      name: "🌡️ Temperature",
      value: value,
    );
  }
}

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

mixin PeriodicFetching<T extends StatefulWidget> on State<T> {
  late Timer timer;
  DataPoint get value;
  set value(DataPoint value) {
    this.value = value;
  }

  void restartTimer({Duration duration = const Duration()}) {
    timer = Timer(duration, handleTimeout);
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void handleTimeout() async {
    final dataPoints = await fetchDataPoints(type: value.type);

    setState(() {
      value = dataPoints[0];
      restartTimer(duration: const Duration(seconds: 3));
    });
  }
}
