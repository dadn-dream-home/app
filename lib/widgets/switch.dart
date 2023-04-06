import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class SwitchButton extends StatefulWidget {
  const SwitchButton(this.deviceName, {super.key});
  final String deviceName;

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool light = true;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      _fetchData();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  Future<void> _fetchData() async {
    var link =
        'https://io.adafruit.com/api/v2/nhatha3788/feeds/light${widget.deviceName[widget.deviceName.length - 1]}/data?limit=1';
    final lightStatusResponse = await http.get(Uri.parse(link));

    if (lightStatusResponse.statusCode == 200) {
      final lightStatusAPI = json.decode(lightStatusResponse.body);
      final lightStatusJSON = lightStatusAPI.elementAt(0);
      final lightStatus = lightStatusJSON["value"];

      setState(() {
        if (lightStatus == "1") {
          light = true;
        } else {
          light = false;
        }
      });
    } else {
      throw Exception('Failed to load status');
    }
  }

  Future<void> postData(bool status) async {
    var data = {
      'value': '${status ? 1 : 0}',
      "X-AIO-Key": "aio_oXYI81z4sxKKskdnG9XIIgLPDFqw"
    };
    var link =
        'https://io.adafruit.com/api/v2/nhatha3788/feeds/light${widget.deviceName[widget.deviceName.length - 1]}/data';
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
    return Switch(
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        setState(() {
          light = !light;
        });
        postData(light);
      },
    );
  }
}
