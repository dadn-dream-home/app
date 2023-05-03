import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

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

Future<int> fetchData(String feed, String value) async {
  var link =
      'https://io.adafruit.com/api/v2/nhatha3788/feeds/$feed/data?limit=1';
  final response = await http.get(Uri.parse(link));
  if (response.statusCode == 200) {
    var ret = json.decode(response.body)[0][value];
    return ret;
  } else {
    throw Exception('Failed to load');
  }
}

Future<void> postData(String link, Map value) async {
  var data = {...value, "X-AIO-Key": ""};
  var useLink = 'https://io.adafruit.com/api/v2/nhatha3788/$link';
  final response = await http.post(
    Uri.parse(useLink),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(data),
  );
}
