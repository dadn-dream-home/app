import 'package:flutter/material.dart';

class SubScaffold extends StatelessWidget {
  const SubScaffold({super.key, this.body, required this.title, this.actions});

  final Widget? body;
  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(title),
        actions: actions,
      ),
      body: body,
    );
  }
}
