import 'package:flutter/material.dart';

import 'main_scaffold_navigation_bar.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({super.key, this.body, required this.title, this.actions});

  final Widget? body;
  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.account_circle_outlined),
        title: Text(title),
        actions: actions,
      ),
      body: body,
      bottomNavigationBar: const MainScaffoldNavigationBar(),
    );
  }
}
