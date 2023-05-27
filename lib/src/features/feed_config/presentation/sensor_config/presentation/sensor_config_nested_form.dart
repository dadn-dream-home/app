import 'package:dream_home/src/features/feed_config/presentation/sensor_config/presentation/sensor_config_nested_form_controller.dart';
import 'package:dream_home/src/grpc/generated/backend.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SensorConfigNestedForm extends ConsumerWidget {
  const SensorConfigNestedForm({super.key, required this.feed});

  final Feed feed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sensorConfigNestedFormControllerProvider(feed));
    final controller =
        ref.watch(sensorConfigNestedFormControllerProvider(feed).notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Sensor config"),
        FormBuilderSwitch(
          name: "sensorConfig.hasNotification",
          onChanged: controller.onChange,
          title: const Text("Notification", style: TextStyle()),
          subtitle: const Text("Enable notification for this feed"),
        ),
        SingleChildScrollView(
          child: FormBuilderRangeSlider(
            name: "sensorConfig.threshold",
            decoration: const InputDecoration(labelText: "Threshold"),
            min: 0.0,
            max: 100.0,
            initialValue: state.threshold,
            onChanged: controller.onRangeChanged,
          ),
        ),
        Visibility(
            visible: false,
            maintainState: true,
            child: Column(children: [
              FormBuilderField(
                name: "sensorConfig.lowerThreshold",
                initialValue: state.threshold.start,
                builder: (field) => const SizedBox.shrink(),
              ),
              FormBuilderField(
                name: "sensorConfig.upperThreshold",
                initialValue: state.threshold.end,
                builder: (field) => const SizedBox.shrink(),
              ),
            ]))
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Expanded(
        //       child: SensorConfigNestedFormThresholdField(
        //         name: "sensorConfig.lowerThreshold",
        //         labelText: "Lower threshold",
        //         enabled: state,
        //       ),
        //     ),
        //     const SizedBox(width: 16.0),
        //     Expanded(
        //       child: SensorConfigNestedFormThresholdField(
        //         name: "sensorConfig.upperThreshold",
        //         labelText: "Upper threshold",
        //         enabled: state,
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
