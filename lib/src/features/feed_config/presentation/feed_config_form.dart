import 'package:dream_home/src/features/feed_config/presentation/feed_config_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';
import '../data/form_key.dart';
import 'nested_form_builder.dart';

class FeedConfigForm extends ConsumerWidget {
  const FeedConfigForm({
    super.key,
    required this.feed,
  });

  final Feed feed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        ref.watch(feedConfigFormControllerProvider(feed).notifier);
    final formData = ref.watch(formKeyProvider(feed)).currentState?.value;

    final state = ref.watch(feedConfigFormControllerProvider(feed));

    if (state is AsyncLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state is AsyncError) {
      return const Center(child: Text("Error"));
    }

    final config = state.value!;

    return FormBuilder(
      key: ref.watch(formKeyProvider(feed)),
      initialValue: config.toProto3Json() as Map<String, dynamic>,
      onChanged: controller.onChange,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NestedFormBuilder(
            name: "feedConfig",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Feed config"),
                FormBuilderTextField(
                  name: "id",
                  decoration: const InputDecoration(labelText: "Feed ID"),
                ),
                FormBuilderDropdown(
                  name: "type",
                  decoration: const InputDecoration(labelText: "Feed type"),
                  items: FeedType.values
                      .map((e) => DropdownMenuItem(
                            value: e.toString(),
                            child: Text(e.toString()),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32.0),
          config.feedConfig.type == FeedType.TEMPERATURE ||
                  config.feedConfig.type == FeedType.HUMIDITY
              ? SensorConfigForm(feed: feed)
              : ActuatorConfigForm(feed: feed),
        ],
      ),
    );
  }
}

class SensorConfigForm extends ConsumerWidget {
  const SensorConfigForm({super.key, required this.feed});

  final Feed feed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(formKeyProvider(feed));
    final controller =
        ref.watch(feedConfigFormControllerProvider(feed).notifier);
    final state = ref.watch(feedConfigFormControllerProvider(feed)).value!;

    return NestedFormBuilder(
      name: "sensorConfig",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Sensor config"),
          FormBuilderSwitch(
            onChanged: (v) => controller.onChange(),
            name: "hasNotification",
            title: const Text("Notification", style: TextStyle()),
            subtitle: const Text("Enable notification for this feed"),
          ),
          Row(
            children: [
              Expanded(
                child: FormBuilderTextField(
                  name: "lowerThreshold",
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Lower threshold",
                    suffixText: "°C",
                  ),
                  initialValue: state.sensorConfig.lowerThreshold.toString(),
                  enabled: state.sensorConfig.hasNotification,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.numeric(),
                  ]),
                  valueTransformer: (value) => double.tryParse(value ?? ""),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: FormBuilderTextField(
                  name: "upperThreshold",
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Upper threshold",
                    suffixText: "°C",
                  ),
                  initialValue: state.sensorConfig.upperThreshold.toString(),
                  enabled: state.sensorConfig.hasNotification,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.numeric(),
                  ]),
                  valueTransformer: (value) => double.tryParse(value ?? ""),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ActuatorConfigForm extends ConsumerWidget {
  const ActuatorConfigForm({super.key, required this.feed});

  final Feed feed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(formKeyProvider(feed));

    return NestedFormBuilder(
      name: "actuatorConfig",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Actuator config"),
          FormBuilderSwitch(
            name: "automatic",
            initialValue: false,
            title: const Text("Notification", style: TextStyle()),
            subtitle: const Text("Enable notification for this feed"),
          ),
        ],
      ),
    );
  }
}
