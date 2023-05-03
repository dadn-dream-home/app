import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends AppBar {
  MyAppBar({
    super.key,
    required this.heading,
    required this.iconData,
    this.action,
    this.onAction,
  }) : super(
          centerTitle: true,
          leading: Icon(iconData),
          title: Text(
            heading,
            style: const TextStyle(fontWeight: FontWeight.w900),
          ),
          titleTextStyle: GoogleFonts.fraunces(
            fontSize: 20,
            color: Colors.black,
          ),
          actions: action == null
              ? []
              : [
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle:
                          const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    onPressed: onAction,
                    child: Text(action),
                  )
                ],
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        );

  final IconData iconData;
  final String heading;
  final String? action;
  final VoidCallback? onAction;
}
