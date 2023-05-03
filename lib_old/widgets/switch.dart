import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key, this.onChanged});

  final ValueChanged<bool>? onChanged;

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });

        if (widget.onChanged != null) {
          widget.onChanged!(value);
        }
      },
    );
  }
}
