import 'package:flutter/material.dart';

class ChooseTime extends StatelessWidget {
  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();

  ChooseTime({super.key});
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
              padding: const EdgeInsetsDirectional.all(10),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'From',
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: TextField(
                          controller: startTimeController,
                          decoration: const InputDecoration(
                            hintText: '07:00',
                          ),
                        ),
                      ),
                    ],
                  ),
                  // const Divider(
                  //   height: 20,
                  //   thickness: 0.7,
                  //   // indent: 20,
                  //   // endIndent: 0,
                  //   color: Color(0xff928E8E),
                  // ),
                  Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'To',
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Flexible(
                          child: TextField(
                            controller: endTimeController,
                            decoration: const InputDecoration(
                              hintText: '08:00',
                            ),
                          ),
                        ),
                      ])
                ],
              )),
        )
      ],
    );
  }
}
