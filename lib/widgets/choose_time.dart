import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dream_home/models/light_setting.dart';

class ChooseTime extends ConsumerWidget {
  final LightModel lightModel;
  const ChooseTime(this.lightModel, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Choose time  to turn the light on',
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'From',
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      TextButton(
                          onPressed: () async {
                            TimeOfDay? newTime = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now()
                                  .replacing(hour: TimeOfDay.now().hour + 1),
                            );
                            if (newTime == null) return;
                            ref
                                .read(lightProvider.notifier)
                                .setStartTime(lightModel.label, newTime);
                          },
                          child: Text(lightModel.startTime.format(context),
                              style: const TextStyle(
                                  color: Color(0xff928E8E), fontSize: 18)))
                    ],
                  ),
                  const Divider(
                    height: 20,
                    thickness: 0.7,
                    color: Color(0xff928E8E),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'To',
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        TextButton(
                            onPressed: () async {
                              TimeOfDay? newTime = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now()
                                    .replacing(hour: TimeOfDay.now().hour + 2),
                              );
                              if (newTime == null) return;
                              ref
                                  .read(lightProvider.notifier)
                                  .setEndTime(lightModel.label, newTime);
                            },
                            child: Text(lightModel.endTime.format(context),
                                style: const TextStyle(
                                    color: Color(0xff928E8E), fontSize: 18)))
                      ])
                ],
              )),
        )
      ],
    );
  }
}
