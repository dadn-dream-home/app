import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dream_home/bottom_nav.dart';
import 'package:dream_home/light/light.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:developer';

class Lighting extends ConsumerWidget {
  Lighting({super.key});
  final List<String> entries = <String>['Light 1', 'Light 2'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var lights = ref.watch(lightProvider);
    inspect(lights[0]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_backspace_outlined,
          ),
          tooltip: 'Go back',
          onPressed: () {},
        ),
        // actions: [
        //   TextButton(
        //     style: TextButton.styleFrom(
        //       foregroundColor: Colors.black,
        //       textStyle: GoogleFonts.outfit(fontSize: 16),
        //     ),
        //     onPressed: () {},
        //     child: const Text('Save'),
        //   )
        // ],
        title: const Text(
          "Lighting",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        titleTextStyle: GoogleFonts.fraunces(
          fontSize: 20,
          color: Colors.black,
        ),
        backgroundColor: const Color.fromARGB(0, 143, 4, 4),
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.grey[100],
      body: ListView.separated(
          // padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Light(entries[index], lights[index]);
          },
          separatorBuilder: (BuildContext context, int index) =>
              // Container(
              //     padding: const EdgeInsetsDirectional.symmetric(horizontal: 18),
              //     child: const Divider(
              //       thickness: 1,
              //       height: 20,
              //       color: Color(0xff928E8E),
              //     )),
              const SizedBox(
                height: 10,
              )
          // children: const [Light("Light 1"), Light("Light 2")],
          ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}

// bool oneIsShowing = false;

@immutable
class LightModel {
  final String label;
  final String scheduledDay, scheduledTime, duration; //deviceView
  final TimeOfDay startTime, endTime; //chooseTime
  final bool isAutomatic;
  final Map repeatOn;

  const LightModel(
      {required this.label,
      required this.scheduledDay,
      required this.scheduledTime,
      required this.duration,
      required this.startTime,
      required this.endTime,
      required this.isAutomatic,
      required this.repeatOn});

  LightModel copyWith(
      {String? label,
      String? scheduledDay,
      String? scheduledTime,
      String? duration,
      TimeOfDay? startTime,
      TimeOfDay? endTime,
      bool? isAutomatic,
      Map? repeatOn}) {
    return LightModel(
      label: label ?? this.label,
      scheduledDay: scheduledDay ?? this.scheduledDay,
      scheduledTime: scheduledTime ?? this.scheduledTime,
      duration: duration ?? this.duration,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      isAutomatic: isAutomatic ?? this.isAutomatic,
      repeatOn: repeatOn ?? this.repeatOn,
    );
  }
}

class LightModelNotifier extends StateNotifier<List<LightModel>> {
  LightModelNotifier({lights}) : super(lights);

  void setAutomatic(String lightLabel) {
    state = [
      for (final item in state)
        if (lightLabel == item.label)
          item.copyWith(isAutomatic: !item.isAutomatic)
        else
          item
    ];
  }

  void setStartTime(String lightLabel, TimeOfDay time) {
    state = [
      for (final item in state)
        if (lightLabel == item.label) item.copyWith(startTime: time) else item
    ];
  }

  void setEndTime(String lightLabel, TimeOfDay time) {
    state = [
      for (final item in state)
        if (lightLabel == item.label) item.copyWith(endTime: time) else item
    ];
  }

  void toggleDay(String lightLabel, int day) {
    List<LightModel> temp = [];
    for (final item in state) {
      if (lightLabel == item.label) {
        var tempRepeat = item.repeatOn;
        tempRepeat.update(day, (value) => !item.repeatOn[day]);
        temp.add(item.copyWith(repeatOn: tempRepeat));
      } else {
        temp.add(item);
      }
    }
    state = temp;
  }
}

final lightProvider =
    StateNotifierProvider<LightModelNotifier, List<LightModel>>((ref) {
  return LightModelNotifier(lights: [
    LightModel(
        label: "Light 1",
        scheduledDay: "none",
        scheduledTime: "none",
        duration: "none",
        startTime: TimeOfDay.now().replacing(hour: TimeOfDay.now().hour + 1),
        endTime: TimeOfDay.now().replacing(hour: TimeOfDay.now().hour + 2),
        isAutomatic: false,
        repeatOn: {
          2: false,
          3: false,
          4: false,
          5: false,
          6: false,
          7: false,
          8: false
        }),
    LightModel(
        label: "Light 2",
        scheduledDay: "none",
        scheduledTime: "none",
        duration: "none",
        startTime: TimeOfDay.now().replacing(hour: TimeOfDay.now().hour + 1),
        endTime: TimeOfDay.now().replacing(hour: TimeOfDay.now().hour + 2),
        isAutomatic: false,
        repeatOn: {
          2: false,
          3: false,
          4: false,
          5: false,
          6: false,
          7: false,
          8: false
        })
  ]);
});
