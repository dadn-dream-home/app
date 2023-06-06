import 'package:collection/collection.dart';
import 'package:dream_home/src/extensions/feed.dart';
import 'package:dream_home/src/features/feed_config/data/feed_config.dart';
import 'package:dream_home/src/features/feed_config/presentation/sensor_config/presentation/sensor_config_nested_form_controller.dart';
import 'package:dream_home/src/features/feed_list/data/feed_list_provider.dart';
import 'package:dream_home/src/grpc/generated/backend.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SensorConfigNestedForm extends ConsumerWidget {
  const SensorConfigNestedForm({super.key, required this.feed});

  final Feed feed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sensorConfigNestedFormControllerProvider(feed));
    final controller =
        ref.watch(sensorConfigNestedFormControllerProvider(feed).notifier);

    final actuators = ref
        .watch(feedListProvider)
        .value!
        .where((f) => f.type.isActuator())
        .where((f) => f.id != feed.id);

    final sensorConfig =
        ref.watch(feedConfigProvider(feed)).value!.sensorConfig;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Sensor config"),
        FormBuilderSwitch(
          name: "sensorConfig.hasNotification",
          onChanged: controller.onChange,
          title: const Text("Notification"),
          subtitle: const Text("Enable notification for this feed"),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          title: const Text("Threshold"),
          subtitle:
              const Text("Outside this threshold, a notification will be sent"),
          enabled: state.hasNotification,
        ),
        SfRangeSelector(
          enabled: state.hasNotification,
          min: feed.type.min(),
          max: feed.type.max(),
          interval: 10.0,
          stepSize: 0.1,
          onChanged: controller.onRangeChanged,
          showLabels: true,
          enableTooltip: true,
          initialValues: state.threshold,
          child: Container(height: 0),
        ),
        const SizedBox(height: 30.0),
        Divider(color: Colors.grey[500]),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  FormBuilderSwitch(
                    name: "sensorConfig.lowerThreshold.hasTrigger",
                    title: const Text("Lower trigger"),
                    subtitle: const Text("Trigger when value is low"),
                    onChanged: controller.onLowerTriggerChange,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                    initialValue: sensorConfig.lowerThreshold.hasTrigger,
                  ),
                  FormBuilderDropdown(
                    decoration: const InputDecoration(
                      labelText: "Trigger feed",
                    ),
                    name: "sensorConfig.lowerThreshold.feed",
                    initialValue: actuators.firstWhereOrNull(
                      (f) => sensorConfig.lowerThreshold.feed.id == f.id,
                    ),
                    items: actuators
                        .map((f) => DropdownMenuItem(
                              value: f,
                              child: Text(f.id),
                            ))
                        .toList(),
                    valueTransformer: (f) => f?.toProto3Json(),
                    enabled: state.hasLowerTrigger,
                    validator: FormBuilderValidators.compose([
                      if (state.hasLowerTrigger)
                        FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderSwitch(
                    name: "sensorConfig.lowerThreshold.state",
                    title: const Text("Set state"),
                    subtitle: const Text("State to set"),
                    enabled: state.hasLowerTrigger,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                    initialValue: sensorConfig.lowerThreshold.state,
                  )
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                children: [
                  FormBuilderSwitch(
                    name: "sensorConfig.upperThreshold.hasTrigger",
                    title: const Text("Upper trigger"),
                    subtitle: const Text("Trigger when value is high"),
                    onChanged: controller.onUpperTriggerChange,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                    initialValue: sensorConfig.upperThreshold.hasTrigger,
                  ),
                  FormBuilderDropdown(
                    decoration: const InputDecoration(
                      labelText: "Trigger feed",
                    ),
                    name: "sensorConfig.upperThreshold.feed",
                    initialValue: actuators.firstWhereOrNull(
                      (f) => sensorConfig.lowerThreshold.feed.id == f.id,
                    ),
                    items: actuators
                        .map((f) => DropdownMenuItem(
                              value: f,
                              child: Text(f.id),
                            ))
                        .toList(),
                    valueTransformer: (f) => f?.toProto3Json(),
                    enabled: state.hasUpperTrigger,
                    validator: FormBuilderValidators.compose([
                      if (state.hasUpperTrigger)
                        FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderSwitch(
                    name: "sensorConfig.upperThreshold.state",
                    title: const Text("Set state"),
                    subtitle: const Text("State to set"),
                    enabled: state.hasUpperTrigger,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                    initialValue: sensorConfig.upperThreshold.state,
                  )
                ],
              ),
            ),
          ],
        ),
        Visibility(
          visible: false,
          maintainState: true,
          child: Column(
            children: [
              FormBuilderField(
                name: "sensorConfig.lowerThreshold.threshold",
                initialValue: state.threshold.start,
                builder: (field) => const SizedBox.shrink(),
              ),
              FormBuilderField(
                name: "sensorConfig.upperThreshold.threshold",
                initialValue: state.threshold.end,
                builder: (field) => const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
