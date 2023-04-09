import 'package:dream_home/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dream_home/setting_screen/notifications/moisture.dart';
import 'package:dream_home/setting_screen/notifications/lighting.dart';
import 'package:dream_home/setting_screen/notifications/temperature.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(Icons.account_circle_outlined),
          title: const Text(
            "Settings",
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
            children: [
              const Padding(
                padding:  EdgeInsets.only(bottom: 14),
                child: Text(
                  'Notifications',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 300, // Set a specific height for the widgets
                child: Column(
                  children: const [
                    Moisture(),
                    SizedBox(height: 16),
                    Lighting(),
                    SizedBox(height: 16),
                    Temperature(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
