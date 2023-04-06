import 'package:flutter/material.dart';
import 'package:dream_home/widgets/checkbox.dart';

class ChooseDay extends StatelessWidget {
  const ChooseDay({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Choose day to repeat',
          textAlign: TextAlign.left,
          style: TextStyle(color: Color(0xff928E8E)),
        ),
        Card(
            child: Container(
          padding: const EdgeInsetsDirectional.all(10),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Every Monday'), CheckBox()],
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
              children: [Text('Every Tuesday'), CheckBox()],
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
              children: [Text('Every Wednesday'), CheckBox()],
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
              children: [Text('Every Thursday'), CheckBox()],
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
              children: [Text('Every Friday'), CheckBox()],
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
              children: [Text('Every Saturday'), CheckBox()],
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
              children: [Text('Every Sunday'), CheckBox()],
            )
          ]),
        ))
      ],
    );
  }
}
