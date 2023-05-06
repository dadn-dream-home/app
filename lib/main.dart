import 'package:dream_home/src/routings/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // runApp(const MyApp(Dashboard()));
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: themeData,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

final themeData = ThemeData(
  primarySwatch: Colors.orange,
  textTheme: GoogleFonts.outfitTextTheme(),
  appBarTheme: AppBarTheme(
    titleTextStyle: GoogleFonts.outfit(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
  ),
  scaffoldBackgroundColor: Colors.grey[100],
  navigationBarTheme: NavigationBarThemeData(
    labelTextStyle: MaterialStateTextStyle.resolveWith(
      (states) => GoogleFonts.outfit(fontSize: 12, color: Colors.black),
    ),
  ),
  cardTheme: CardTheme(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
);
