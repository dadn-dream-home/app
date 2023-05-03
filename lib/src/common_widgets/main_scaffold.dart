import 'package:dream_home/src/common_widgets/main_scaffold_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({super.key, this.body, required this.title});

  final Widget? body;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.account_circle_outlined),
        title: Text(title),
      ),
      body: body,
      bottomNavigationBar: const MainScaffoldNavigationBar(),
    );
  }
}
