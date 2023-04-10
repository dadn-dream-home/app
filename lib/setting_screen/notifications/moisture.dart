import 'package:flutter/material.dart';
import 'package:dream_home/widgets/switch.dart';

class Moisture extends StatefulWidget {
  const Moisture({Key? key}) : super(key: key);

  @override
  _MoistureState createState() => _MoistureState();
}

class _MoistureState extends State<Moisture> {
  bool isExpanded = false;

  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Turn On/Off notifications',
          textAlign: TextAlign.left,
          style: TextStyle(color: Color(0xff928E8E), fontSize: 14),
        ),
        Card(
          child: ExpansionTile(
            title: const Text(
              'Moisture',
              textAlign: TextAlign.left,
            ),
            controlAffinity: ListTileControlAffinity.leading,
            trailing: const SwitchButton(),
            onExpansionChanged: (value) {
              setState(() {
                isExpanded = value;
              });
            },
            children: [
              if (isExpanded)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Some additional text to show when expanded',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
