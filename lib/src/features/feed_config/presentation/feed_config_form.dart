import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';
import '../data/feed_config.dart';
import '../data/flatten.dart';
import '../data/form_key.dart';
import 'actuator_config/presentation/actuator_config_nested_form.dart';
import 'feed_config_form_controller.dart';
import 'sensor_config/presentation/sensor_config_nested_form.dart';

class FeedConfigForm extends ConsumerWidget {
  const FeedConfigForm({
    super.key,
    required this.feed,
  });

  final Feed feed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initial = ref.watch(feedConfigProvider(feed));

    if (initial is AsyncLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (initial is AsyncError) {
      return const Center(child: Text("Error"));
    }

    final controller =
        ref.watch(feedConfigFormControllerProvider(feed).notifier);
    final state = ref.watch(feedConfigFormControllerProvider(feed));

    final config = initial.value!;

    return FormBuilder(
      key: ref.watch(formKeyProvider(feed)),
      initialValue: (config.toProto3Json() as Map<String, dynamic>).flatten(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: false,
            maintainState: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Feed config"),
                FormBuilderTextField(
                  name: "feedConfig.id",
                  decoration: const InputDecoration(labelText: "Feed ID"),
                ),
                FormBuilderDropdown(
                  name: "feedConfig.type",
                  decoration: const InputDecoration(labelText: "Feed type"),
                  initialValue: config.feedConfig.type,
                  onChanged: controller.onChange,
                  items: FeedType.values
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e.toString()),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 32.0),
          state == FeedType.TEMPERATURE || state == FeedType.HUMIDITY
              ? SensorConfigNestedForm(feed: feed)
              : ActuatorConfigNestedForm(feed: feed),
        ],
      ),
    );
  }
}
