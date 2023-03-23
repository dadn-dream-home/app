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

  // bool showWidget = false;
  // final Function() notifyParent;
  const Light(this.lightName, {super.key});

  @override
  State<Light> createState() => _LightState();
}

class _LightState extends State<Light> {
  bool chosen = false;
  // Color pickerColor = Color(0xff443a49);
  // Color currentColor = Color(0xff443a49);
  // static bool oneIsShowing = false;

  // void updateColor() {
  //   setState(({required Color currentColor, required Color pickerColor}) {
  //     currentColor = pickerColor;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: () {
          setState(() {
            chosen = !chosen;
          });

          // _LightState.oneIsShowing = !_LightState.oneIsShowing;

          // widget.notifyParent();
        },
        child: DeviceView(widget.lightName),
      ),
      chosen
          ? Container(
              padding:
                  const EdgeInsetsDirectional.only(start: 16, end: 16, top: 20),
              child: Theme(
                  data: Theme.of(context).copyWith(
                    textTheme: TextTheme(
                        bodyMedium: GoogleFonts.outfit(
                      fontSize: 18,
                      color: Colors.black,
                    )),
                  ),
                  child: Column(children: [
                    LightColor(),
                    SizedBox(height: 10),
                    Automatic(),
                    SizedBox(height: 10),
                    ChooseTime(),
                    SizedBox(height: 10),
                    ChooseDay()
                  ])),
            )
          : Container(),
      // const SizedBox(
      //   height: 20,
      // )
    ]);
  }
}
