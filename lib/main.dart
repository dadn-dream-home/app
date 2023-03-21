import 'package:dream_home/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp(Dashboard()));
}

class MyApp extends StatelessWidget {
  final Widget page;

  const MyApp(this.page, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: GoogleFonts.outfitTextTheme(),
      ),
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: page,
      ),
    );
  }
}
