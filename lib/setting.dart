import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dream_home/bottom_nav.dart';


class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_backspace_outlined,
          ),
          tooltip: 'Go back',
          onPressed: () {},
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            onPressed: () {},
            child: const Text('Save'),
          )
        ],
        title: const Text(
          "Setting",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        titleTextStyle: GoogleFonts.fraunces(
          fontSize: 20,
          color: Colors.black,
        ),
        backgroundColor: const Color.fromARGB(0, 143, 4, 4),
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.grey[100],
      // body: ListView.separated(
      //   // padding: const EdgeInsets.all(8),
      //   itemCount: entries.length,
      //   // itemBuilder: (BuildContext context, int index) {
      //   //   return Setting();
      //   // },
      //   separatorBuilder: (BuildContext context, int index) => Container(
      //       padding: const EdgeInsetsDirectional.all(18),
      //       child: const Divider(
      //         thickness: 1,
      //         height: 20,
      //         color: Color(0xff928E8E),
      //       )),
      //   // children: const [Setting("Setting 1"), Setting("Setting 2")],
      // ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
