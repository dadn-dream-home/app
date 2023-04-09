import 'package:flutter/material.dart';
import 'package:dream_home/widgets/switch.dart';

class Lighting extends StatefulWidget {
  const Lighting({Key? key}) : super(key: key);

  @override
  _LightingState createState() => _LightingState();
}

class _LightingState extends State<Lighting> {
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
              'Lighting',
              textAlign: TextAlign.left,
            ),
            leading: Icon(isExpanded
                ? Icons.keyboard_arrow_down
                : Icons.keyboard_arrow_right),
            trailing: SwitchButton(),
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
