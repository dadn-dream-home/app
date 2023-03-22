import 'package:dream_home/device/automatic.dart';
import 'package:dream_home/device/choose_day.dart';
import 'package:dream_home/device/choose_time.dart';
import 'package:dream_home/device/device_view.dart';
import 'package:dream_home/device/light_color.dart';
import 'package:flutter/material.dart';
// import 'package:dream_home/device/switch.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:dream_home/device/checkbox.dart';

class Light extends StatefulWidget {
  final String lightName;
  const Light(this.lightName, {super.key});

  @override
  State<Light> createState() => _LightState();
}

class _LightState extends State<Light> {
  bool showWidget = true;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: () {
          setState(() {
            showWidget = !showWidget;
          });
        },
        child: DeviceView(widget.lightName),
      ),
      const SizedBox(
        height: 20,
      ),
      showWidget
          ? Container(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
              child: Theme(
                  data: Theme.of(context).copyWith(
                    textTheme: TextTheme(
                        bodyMedium: GoogleFonts.outfit(
                      fontSize: 18,
                      color: Colors.black,
                    )),
                  ),
                  child: Column(children: const [
                    LightColor(),
                    SizedBox(height: 10),
                    Automatic(),
                    SizedBox(height: 10),
                    ChooseTime(),
                    SizedBox(height: 10),
                    // ChooseDay()
                  ])),
            )
          : Container()
    ]);
  }
}
