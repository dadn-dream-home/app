import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dream_home/bottom_nav.dart';
import 'package:dream_home/light/light.dart';

class Lighting extends StatelessWidget {
  const Lighting({super.key});
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
      body: Column(children: const [Light("Light 1")]),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
