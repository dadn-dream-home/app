import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, this.name, this.value, this.child});

  final String? name;
  final String? value;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 0),
        child: child,
      ),
    );
  }
}
