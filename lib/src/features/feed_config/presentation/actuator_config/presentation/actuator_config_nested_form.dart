import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../grpc/generated/backend.pbgrpc.dart';

class ActuatorConfigNestedForm extends ConsumerWidget {
  const ActuatorConfigNestedForm({super.key, required this.feed});

  final Feed feed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Actuator config"),
        FormBuilderSwitch(
          name: "actuatorConfig.automatic",
          title: const Text("Notification", style: TextStyle()),
          subtitle: const Text("Enable notification for this feed"),
        ),
      ],
    );
  }
}
