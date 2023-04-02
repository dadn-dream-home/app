import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LightColor extends StatefulWidget {
  final String deviceName;
  // final Function() notifyParent;

  const LightColor(this.deviceName, {super.key});
  @override
  State<LightColor> createState() => _LightColorState();
}

class _LightColorState extends State<LightColor> {
  Color pickerColor = const Color(0xff443a49);
  Color currentColor = const Color(0xff443a49);

  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  Future<void> _fetchData() async {
    var link =
        'https://io.adafruit.com/api/v2/nhatha3788/feeds/color${widget.deviceName[widget.deviceName.length - 1]}/data?limit=1';
    final colorResponse = await http.get(Uri.parse(link));
    // print(link);
    if (colorResponse.statusCode == 200) {
      final colorAPI = json.decode(colorResponse.body);
      final colorJSON = colorAPI.elementAt(0);
      final color = colorJSON["value"];
      print(color);

      setState(() {
        currentColor = hexToColor(color);
        pickerColor = currentColor;
        // print(currentColor);
      });
    } else {
      throw Exception('Failed to load color');
    }
  }

  Future<void> postData(Color newColor) async {
    var data = {
      'value': '#${newColor.value.toRadixString(16).substring(2)}',
      "X-AIO-Key": "aio_Goyr05POLgjTA4sg7Nl9xtmbDgxW"
    };
    print(data);
    var link =
        'https://io.adafruit.com/api/v2/nhatha3788/feeds/color${widget.deviceName[widget.deviceName.length - 1]}/data';
    final response = await http.post(
      Uri.parse(link),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
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
                });
                postData(pickerColor);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
