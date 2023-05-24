import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class SensorConfigNestedFormThresholdField extends StatelessWidget {
  const SensorConfigNestedFormThresholdField({
    super.key,
    required this.name,
    required this.labelText,
    required this.initialValue,
    required this.enabled,
  });

  final String name;
  final String labelText;
  final double initialValue;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: labelText,
        suffixText: "°C",
      ),
      initialValue: initialValue.toString(),
      enabled: enabled,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
      valueTransformer: (value) => double.tryParse(value ?? ""),
    );
  }
}
