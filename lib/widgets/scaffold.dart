import 'package:flutter/material.dart';

import 'bottom_nav.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key, this.body, this.appBar});

  final AppBar? appBar;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.grey[100],
      body: body,
      bottomNavigationBar: const BottomNav(),
    );
  }
}
