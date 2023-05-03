import 'package:dream_home/setting_screen/controlling/fan.dart';
import 'package:dream_home/setting_screen/controlling/lighting.dart';
import 'package:dream_home/setting_screen/notifications/lighting.dart';
import 'package:dream_home/setting_screen/notifications/moisture.dart';
import 'package:dream_home/setting_screen/notifications/temperature.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 14),
          child: Text(
            'Notifications',
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        SizedBox(
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
        const Divider(
          color: Colors.grey,
          height: 16.5,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 14, top: 14),
          child: Text(
            'Controlling',
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        SizedBox(
          height: 300, // Set a specific height for the widgets
          child: Column(
            children: const [
              LightingControl(),
              SizedBox(height: 16),
              Fan(),
            ],
          ),
        ),
      ],
    );
  }
}
