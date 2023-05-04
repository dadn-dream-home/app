import 'package:flutter/material.dart';

import '../../navigations/presentation/main_scaffold.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: "Dream Home",
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        children: [],
      ),
    );
  }
}
