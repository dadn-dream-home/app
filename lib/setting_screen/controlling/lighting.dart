import 'package:flutter/material.dart';
import 'package:dream_home/widgets/switch.dart';

class LightingControl extends StatefulWidget {
  const LightingControl({Key? key}) : super(key: key);

  @override
  _LightingControlState createState() => _LightingControlState();
}

class _LightingControlState extends State<LightingControl> {
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
          'Smart controlling setting',
          textAlign: TextAlign.left,
          style: TextStyle(color: Color(0xff928E8E), fontSize: 14),
        ),
        Card(
          child: ExpansionTile(
            title: const Text(
              'Lighting',
              textAlign: TextAlign.left,
            ),
            controlAffinity: ListTileControlAffinity.leading,
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
