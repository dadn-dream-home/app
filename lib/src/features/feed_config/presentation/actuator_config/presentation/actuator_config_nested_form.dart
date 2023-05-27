import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../../grpc/generated/backend.pbgrpc.dart';
import '../../../data/form_key.dart';
import 'actuator_config_nested_form_controller.dart';

class ActuatorConfigNestedForm extends ConsumerWidget {
  const ActuatorConfigNestedForm({super.key, required this.feed});

  final Feed feed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        ref.watch(actuatorConfigNestedFormControllerProvider(feed).notifier);
    final state = ref.watch(actuatorConfigNestedFormControllerProvider(feed));

    ref.listen(
      actuatorConfigNestedFormControllerProvider(feed),
      (_, state) {
        ref.read(formKeyProvider(feed)).currentState!.patchValue({
          "actuatorConfig.turnOnCronExpr": state.turnOnCronExpr,
          "actuatorConfig.turnOffCronExpr": state.turnOffCronExpr,
        });
      },
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Actuator config"),
        FormBuilderSwitch(
          name: "actuatorConfig.automatic",
          title: const Text("Notification", style: TextStyle()),
          subtitle: const Text("Enable notification for this feed"),
        ),
        // time in date picker

        Row(
          children: [
            Expanded(
              child: FormBuilderDateTimePicker(
                name: "actuatorConfig.startTime",
                decoration: const InputDecoration(labelText: "Turn on time"),
                inputType: InputType.time,
                initialTime: state.turnOnTime,
                onChanged: controller.setTurnOnTime,
                enabled: true,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: FormBuilderDateTimePicker(
                name: "actuatorConfig.endTime",
                decoration: const InputDecoration(labelText: "Turn off time"),
                inputType: InputType.time,
                initialTime: state.turnOffTime,
                onChanged: controller.setTurnOffTime,
                enabled: true,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
            ),
          ],
        ),

        // weekdays, new row for each option
        FormBuilderCheckboxGroup(
            name: "actuatorConfig.weekdays",
            decoration: const InputDecoration(labelText: "Weekdays"),
            options: Weekday.values
                .map(
                  (e) => FormBuilderFieldOption(
                    value: e,
                    child: Text(e.name.toUpperCase()),
                  ),
                )
                .toList(),
            orientation: OptionsOrientation.vertical,
            onChanged: controller.setWeekdays,
            validator: FormBuilderValidators.compose<List<Weekday>>([
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(1),
            ])),

        Visibility(
          visible: false,
          maintainState: true,
          child: Column(
            children: [
              FormBuilderTextField(
                name: "actuatorConfig.turnOnCronExpr",
                initialValue: state.turnOnCronExpr,
              ),
              FormBuilderTextField(
                name: "actuatorConfig.turnOffCronExpr",
                initialValue: state.turnOffCronExpr,
              ),
            ],
          ),
        )
      ],
    );
  }
}
