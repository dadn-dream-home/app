import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dream_home/bottom_nav.dart';
import 'package:dream_home/light/light.dart';

class Lighting extends StatefulWidget {
  const Lighting({super.key});

  @override
  State<Lighting> createState() => _LightingState();
}

class _LightingState extends State<Lighting> {
  // bool oneIsShowing = false;

  final List<String> entries = <String>['Light 1', 'Light 2'];

  // refresh() {
  //   setState(() {
  //     oneIsShowing = !oneIsShowing;
  //   });
  // }

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
          "Lighting",
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
      body: ListView.separated(
        // padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Light(entries[index]);
        },
        separatorBuilder: (BuildContext context, int index) => Container(
            padding: const EdgeInsetsDirectional.all(18),
            child: const Divider(
              thickness: 1,
              height: 20,
              color: Color(0xff928E8E),
            )),
        // children: const [Light("Light 1"), Light("Light 2")],
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
