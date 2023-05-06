import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_math/vector_math.dart' as vmath;

class Gauge extends StatelessWidget {
  const Gauge({
    super.key,
    required this.color,
    this.value,
    required this.min,
    required this.max,
    this.fontSize = 26,
  });

  final MaterialColor color;
  final double? value;
  final double min;
  final double max;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: CustomPaint(
        painter: _MyPainter(
          color: color,
          percent:
              clampDouble((value ?? min - min) / (max - min) * 100, 0, 100),
        ),
        child: Center(
          child: Text(
            value == null ? "" : "$value",
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: color.shade800,
                fontSize: fontSize,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MyPainter extends CustomPainter {
  _MyPainter({required this.percent, required this.color});

  final double percent;
  final MaterialColor color;

  @override
  void paint(Canvas canvas, Size size) {
    // outer circle
    drawArc(canvas, size, percent: 100, color: Colors.grey[100]!);
    // actual circle
    drawArc(canvas, size, percent: percent, color: color.shade200);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  void drawArc(Canvas canvas, Size size,
      {required double percent, required Color color}) {
    final center = size.center(Offset.zero);

    canvas.drawArc(
      Rect.fromCenter(
        center: center,
        width: size.width - 4,
        height: size.height - 4,
      ),
      vmath.radians(270),
      vmath.radians(-360 * percent / 100),
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..color = color
        ..strokeWidth = 4,
    );
  }
}
