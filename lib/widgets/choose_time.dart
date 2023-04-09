import 'package:flutter/material.dart';

class ChooseTime extends StatelessWidget {
  const ChooseTime({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Choose time  to turn the light on',
          textAlign: TextAlign.left,
          style: TextStyle(color: Color(0xff928E8E)),
        ),
        Card(
          child: Container(
              padding: const EdgeInsetsDirectional.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'From',
                      ),
                      Text('18h', style: TextStyle(color: Color(0xff928E8E)))
                    ],
                  ),
                  const Divider(
                    height: 20,
                    thickness: 0.7,
                    // indent: 20,
                    // endIndent: 0,
                    color: Color(0xff928E8E),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'To',
                        ),
                        Text('20h', style: TextStyle(color: Color(0xff928E8E)))
                      ])
                ],
              )),
        )
      ],
    );
  }
}
