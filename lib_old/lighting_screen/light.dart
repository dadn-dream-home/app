import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dream_home/lighting_screen/light_color.dart';
import 'package:dream_home/widgets/automatic.dart';
import 'package:dream_home/widgets/choose_day.dart';
import 'package:dream_home/widgets/choose_time.dart';
import 'package:dream_home/widgets/device_view.dart';
import 'package:dream_home/models/light_setting.dart';

class Light extends ConsumerStatefulWidget {
  final String lightName;
  final LightModel lightModel;
  const Light(this.lightName, this.lightModel, {super.key});

  @override
  ConsumerState<Light> createState() => _LightState();
}

class _LightState extends ConsumerState<Light>
    with AutomaticKeepAliveClientMixin {
  bool chosen = false;
  void onSave(BuildContext context) async {
    int startHour = widget.lightModel.startTime.hour;
    int endHour = widget.lightModel.endTime.hour;
    int startMinute = widget.lightModel.startTime.minute;
    int endMinute = widget.lightModel.endTime.minute;
    Map repeat = widget.lightModel.repeatOn;
    bool haveDay = false;

    List temp = [];

    for (MapEntry e in repeat.entries) {
      if (e.value) {
        haveDay = true;
        switch (e.key) {
          case 2:
            temp.add('mon');
            break;
          case 3:
            temp.add('tue');
            break;
          case 4:
            temp.add('wed');
            break;
          case 5:
            temp.add('thu');
            break;
          case 6:
            temp.add('fri');
            break;
          case 7:
            temp.add('sat');
            break;
          case 8:
            temp.add('sun');
            break;
        }
      }
    }
    if (!(startHour <= endHour && startMinute <= endMinute)) {
      showAlert(context, 'Start time be must be earlier than end time ');
      return;
    }
    if (!haveDay) {
      showAlert(context, 'At least one day must be selected');
      return;
    }

    showSnackbar(context);
    String link = 'actions';
    String startActionValue = "$startMinute $startHour * * ${temp.join(',')}";
    String endActionValue = "$endMinute $endHour * * ${temp.join(',')}";
    String feed = widget.lightModel.label.replaceAll(' ', '').toLowerCase();
    int feedID = await fetchData(feed, 'feed_id');

    Map data = {
      "action": "feed",
      "trigger_type": "schedule",
      "action_value": "1",
      "value": startActionValue,
      "action_feed_id": feedID
    };
    await postData(link, data);
    data = {...data, "value": endActionValue, "action_value": "0"};
    await postData(link, data);
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: GoogleFonts.outfit(),
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        backgroundColor: Colors.white);
    final ButtonStyle submitButton = FilledButton.styleFrom(
      textStyle: GoogleFonts.outfit(),
      backgroundColor: const Color.fromRGBO(255, 114, 53, 0.4),
    );
    super.build(context);
    return Column(children: [
      Container(
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 16),
          child: ElevatedButton(
            style: style,
            onPressed: () {
              setState(() {
                chosen = !chosen;
              });
            },
            child: DeviceView(widget.lightName),
          )),
      if (chosen)
        Container(
          padding:
              const EdgeInsetsDirectional.only(start: 16, end: 16, top: 20),
          child: Theme(
              data: Theme.of(context).copyWith(
                textTheme: TextTheme(
                    bodyMedium: GoogleFonts.outfit(
                  fontSize: 18,
                  color: Colors.black,
                )),
              ),
              child: Column(children: [
                LightColor(widget.lightName),
                const SizedBox(height: 10),
                Automatic(widget.lightModel),
                if (widget.lightModel.isAutomatic)
                  Column(children: [
                    const SizedBox(height: 10),
                    ChooseTime(widget.lightModel),
                    const SizedBox(height: 10),
                    ChooseDay(widget.lightModel),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FilledButton(
                          style: submitButton,
                          onPressed: () {},
                          child: const Text('Cancel'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FilledButton(
                          style: submitButton,
                          onPressed: () => {onSave(context)},
                          child: const Text('Save'),
                        ),
                      ],
                    )
                  ])
              ])),
        )
    ]);
  }
}

void showAlert(BuildContext context, String msg) {
  showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            title: const Text('Notice'),
            content: Text(msg),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ));
}

void showSnackbar(BuildContext context) {
  const snackBar = SnackBar(
    content: Text('Yay! Set schedule OK!'),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
