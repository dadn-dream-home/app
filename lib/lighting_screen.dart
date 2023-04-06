import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dream_home/widgets/bottom_nav.dart';
import 'package:dream_home/lighting_screen/light.dart';
import 'package:dream_home/models/light_setting.dart';

class Lighting extends ConsumerWidget {
  Lighting({super.key});
  final List<String> entries = <String>['Light 1', 'Light 2'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var lights = ref.watch(lightProvider);
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
        // actions: [
        //   TextButton(
        //     style: TextButton.styleFrom(
        //       foregroundColor: Colors.black,
        //       textStyle: GoogleFonts.outfit(fontSize: 16),
        //     ),
        //     onPressed: () {},
        //     child: const Text('Save'),
        //   )
        // ],
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
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Light(entries[index], lights[index]);
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
                height: 10,
              )),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
