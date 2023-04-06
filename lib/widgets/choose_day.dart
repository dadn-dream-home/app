import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dream_home/models/light_setting.dart';

class ChooseDay extends ConsumerWidget {
  final LightModel lightModel;
  const ChooseDay(this.lightModel, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<int> days = [];
    for (var i = 2; i <= 8; i++) {
      days.add(i);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Choose day to repeat',
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
                children: days
                    .map(
                      (day) => DayItem(day, lightModel),
                    )
                    .toList(),
              )),
        )
      ],
    );
  }
}

class DayItem extends ConsumerWidget {
  const DayItem(this.id, this.lightModel, {super.key});
  final int id;
  final LightModel? lightModel;

  String getDay(int id) {
    String val;
    switch (id) {
      case 2:
        val = 'Monday';
        break;
      case 3:
        val = 'Tuesday';
        break;
      case 4:
        val = 'Wednesday';
        break;
      case 5:
        val = 'Thursday';
        break;
      case 6:
        val = 'Friday';
        break;
      case 7:
        val = 'Saturday';
        break;
      case 8:
        val = 'Sunday';
        break;
      default:
        val = '';
    }
    return val;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return const Color(0xff928E8E);
      }
      return const Color(0xff928E8E);
    }

    var list = [2, 3, 4, 5, 6, 7];

    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(getDay(id)),
          Checkbox(
            fillColor: MaterialStateProperty.resolveWith(getColor),
            onChanged: (bool? value) => ref
                .read(lightProvider.notifier)
                .toggleDay(lightModel!.label, id),
            value: lightModel!.repeatOn[id],
          ),
        ],
      ),
      if (list.contains(id))
        const Divider(
          height: 20,
          thickness: 0.7,
          color: Color(0xff928E8E),
        )
    ]);
  }
}
