import 'package:flutter/material.dart';
import 'package:dream_home/widgets/switch.dart';

class DeviceView extends StatelessWidget {
  final String deviceName;

  const DeviceView(this.deviceName, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            // color: Colors.blue,
            border: Border(
          left: BorderSide(
            color: Color(0xff5DB075),
            width: 3.0,
          ),
        )),
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        height: 100,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start, // for left side
                  children: [
                    Text(deviceName, style: const TextStyle(fontSize: 20)),
                    const SizedBox(height: 10),
                    const Text(
                      'Today | 5pm',
                      style: TextStyle(color: Color(0xff928E8E)),
                    )
                  ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end, // for left side
                children: [
                  SwitchButton(deviceName),
                  Row(children: [
                    const Text("Duration",
                        style: TextStyle(color: Color(0xff928E8E))),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsetsDirectional.all(5),
                      decoration: BoxDecoration(
                        color: const Color(0xffE9EDEF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.timer,
                            color: Color(0xff9C9797),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("2h", style: TextStyle(color: Color(0xff928E8E)))
                        ],
                      ),
                    )
                  ])
                ],
              )
            ]));
  }
}
