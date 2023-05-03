import 'package:dream_home/src/common_widgets/main_scaffold.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: "Settings",
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        children: [],
      ),
    );
  }
}
