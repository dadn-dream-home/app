import 'package:dream_home/src/features/feed_config/data/feed_config.dart';
import 'package:dream_home/src/features/feed_config/presentation/sensor_config/presentation/sensor_config_nested_form_controller.dart';
import 'package:dream_home/src/grpc/generated/backend.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../nested_form_builder.dart';
import 'sensor_config_threshold_field.dart';

class SensorConfigNestedForm extends ConsumerWidget {
  const SensorConfigNestedForm({super.key, required this.feed});

  final Feed feed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initial = ref.watch(feedConfigProvider(feed)).value!;
    final state = ref.watch(sensorConfigNestedFormControllerProvider(feed));
    final controller =
        ref.watch(sensorConfigNestedFormControllerProvider(feed).notifier);

    return NestedFormBuilder(
      name: "sensorConfig",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Sensor config"),
          FormBuilderSwitch(
            name: "hasNotification",
            onChanged: controller.onChange,
            title: const Text("Notification", style: TextStyle()),
            subtitle: const Text("Enable notification for this feed"),
          ),
          Row(
            children: [
              Expanded(
                child: SensorConfigNestedFormThresholdField(
                  name: "lowerThreshold",
                  labelText: "Lower threshold",
                  initialValue: initial.sensorConfig.lowerThreshold,
                  enabled: state,
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: SensorConfigNestedFormThresholdField(
                  name: "upperThreshold",
                  labelText: "Upper threshold",
                  initialValue: initial.sensorConfig.upperThreshold,
                  enabled: state,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
