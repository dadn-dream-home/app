import 'package:dream_home/dashboard_screen/card.dart';
import 'package:dream_home/dashboard_screen/gauge.dart';
import 'package:dream_home/models/data_point.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

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
      name: "Temperature",
      value: DataPoint.temperature(37),
    );
  }
}

class HumidCard extends StatelessWidget {
  const HumidCard({super.key});

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
                color: Colors.green,
                value: DataPoint.moisture(80),
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
                "💧 Humidity",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(top: 5.0),
              child: const Text(
                "Above 50% - Too high",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ])),
    );
  }
}
