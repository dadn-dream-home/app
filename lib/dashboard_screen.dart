import 'package:dream_home/dashboard_screen/card.dart';
import 'package:dream_home/models/data_point.dart';
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
      body: Container(
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

class TemperatureCard extends StatelessWidget {
  const TemperatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DataPointCard(
      name: "🌡️ Temperature",
      value: DataPoint.temperature(36),
    );
  }
}

class HumidCard extends StatelessWidget {
  const HumidCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DataPointCard(
      name: "💧 Humidity",
      value: DataPoint.humidity(50),
    );
  }
}
