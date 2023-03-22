import 'package:flutter/material.dart';
import 'package:dream_home/device/switch.dart';

class Automatic extends StatelessWidget {
  const Automatic({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Turn On/Off Automatic light',
          textAlign: TextAlign.left,
          style: TextStyle(color: Color(0xff928E8E)),
        ),
        Card(
          child: Container(
              padding: const EdgeInsetsDirectional.only(
                  start: 10, top: 3, bottom: 3),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Automatic"),
                    SwitchButton(),
                  ])),
        )
      ],
    );
  }
}
