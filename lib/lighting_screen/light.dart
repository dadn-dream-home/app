import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dream_home/lighting_screen/light_color.dart';
import 'package:dream_home/widgets/automatic.dart';
import 'package:dream_home/widgets/choose_day.dart';
import 'package:dream_home/widgets/choose_time.dart';
import 'package:dream_home/widgets/device_view.dart';
import 'package:dream_home/models/light_setting.dart';

class Light extends ConsumerStatefulWidget {
  final String lightName;
  final LightModel lightModel;
  const Light(this.lightName, this.lightModel, {super.key});

  @override
  ConsumerState<Light> createState() => _LightState();
}

class _LightState extends ConsumerState<Light> {
  bool chosen = false;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: GoogleFonts.outfit(),
        minimumSize: Size.zero, // Set this
        padding: EdgeInsets.zero,
        backgroundColor: Colors.white);
    final ButtonStyle submitButton = FilledButton.styleFrom(
      textStyle: GoogleFonts.outfit(),
      backgroundColor: const Color.fromRGBO(255, 114, 53, 0.4),
    );
    return Column(children: [
      Container(
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 16),
          child: ElevatedButton(
            style: style,
            onPressed: () {
              setState(() {
                chosen = !chosen;
              });
            },
            child: DeviceView(widget.lightName),
          )),

      if (chosen)
        Container(
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
                LightColor(widget.lightName),
                const SizedBox(height: 10),
                Automatic(widget.lightModel),
                if (widget.lightModel.isAutomatic)
                  Column(children: [
                    const SizedBox(height: 10),
                    ChooseTime(widget.lightModel),
                    const SizedBox(height: 10),
                    ChooseDay(widget.lightModel),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FilledButton(
                          style: submitButton,
                          onPressed: () {},
                          child: const Text('Cancel'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FilledButton(
                          style: submitButton,
                          onPressed: () {},
                          child: const Text('Save'),
                        ),
                      ],
                    )
                  ])
              ])),
        )

      // const SizedBox(
      //   height: 20,
      // )
    ]);
  }
}
