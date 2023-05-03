import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dream_home/models/light_setting.dart';

class Automatic extends ConsumerWidget {
  final LightModel lightModel;
  const Automatic(this.lightModel, {super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Turn On/Off Automatic light',
          textAlign: TextAlign.left,
          style: TextStyle(color: Color(0xff928E8E)),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
              padding: const EdgeInsetsDirectional.only(
                  start: 10, top: 3, bottom: 3),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Automatic"),
                    Switch(
                        activeColor: Colors.red,
                        onChanged: (bool? value) => ref
                            .read(lightProvider.notifier)
                            .setAutomatic(lightModel.label),
                        value: lightModel.isAutomatic),
                  ])),
        )
      ],
    );
  }
}
