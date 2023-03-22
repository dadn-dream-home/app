import 'package:flutter/material.dart';

class LightColor extends StatelessWidget {
  // final String deviceName;

  const LightColor({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Choose light color',
          textAlign: TextAlign.left,
          style: TextStyle(color: Color(0xff928E8E)),
        ),
        Card(
          child: Container(
              padding: const EdgeInsetsDirectional.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Light color"),
                    Icon(
                      Icons.help_outline,
                    ),
                  ])),
        )
      ],
    );
  }
}
