import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_math/vector_math.dart' as vmath;

class Gauge extends StatelessWidget {
  const Gauge({
    super.key,
    this.value,
    required this.min,
    required this.max,
    this.fontSize = 26,
  });

  final double? value;
  final double min;
  final double max;
  final double fontSize;

  static const colorScale = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    final t = clampDouble(((value ?? min) - min) / (max - min), 0, 0.9999999);

    final scaledT = t * (colorScale.length - 1);
    final oldColor = colorScale[scaledT.floor()];
    final newColor = colorScale[scaledT.floor() + 1];
    final newT = scaledT - scaledT.floor();
    final color = Color.lerp(oldColor, newColor, newT)!;

    return AspectRatio(
      aspectRatio: 1,
      child: CustomPaint(
        painter: _MyPainter(
          color: color,
          percent: t * 100,
        ),
        child: Center(
          child: Text(
            value == null ? "" : "$value".substring(0, 4),
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: Color.lerp(color, Colors.black, 0.5),
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
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    // outer circle
    drawArc(canvas, size, percent: 100, color: Colors.grey[100]!);
    // actual circle
    drawArc(canvas, size, percent: percent, color: color);
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
