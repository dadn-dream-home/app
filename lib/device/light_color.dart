import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class LightColor extends StatefulWidget {
  // final String deviceName;
  // final Function() notifyParent;

  const LightColor({super.key});
  @override
  State<LightColor> createState() => _LightColorState();
}

class _LightColorState extends State<LightColor> {
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);

  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

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
        Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(12),
          //   boxShadow: [
          //     BoxShadow(
          //       color: Colors.black.withOpacity(0.12),
          //       spreadRadius: 0,
          //       blurRadius: 8,
          //       offset: Offset(0, 2), // changes position of shadow
          //     ),
          //   ],
          // ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Container(
                padding: const EdgeInsetsDirectional.only(
                    start: 10, top: 3, bottom: 3),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Light color"),
                      IconButton(
                        icon: Icon(Icons.palette, color: currentColor),
                        onPressed: () => _dialogBuilder(context),
                      ),
                    ])),
          ),
        )
      ],
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: pickerColor,
              onColorChanged: changeColor,
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Got it'),
              onPressed: () {
                setState(() {
                  currentColor = pickerColor;
                  // print(currentColor.value);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
