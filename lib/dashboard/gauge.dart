import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_math/vector_math.dart' as vmath;

class Gauge extends StatelessWidget {
  const Gauge({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _MyPainter(),
      child: Container(),
    );
  }
}

class _MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    drawArc(canvas, size, toPercent: 100, color: Colors.grey[200]!);
    drawArc(canvas, size, toPercent: 67, color: Colors.amber);

    final textPainter = TextPainter(
      text: TextSpan(
        text: "37",
        style: GoogleFonts.inter(
            textStyle: const TextStyle(color: Colors.amber, fontSize: 40)),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout();

    textPainter.paint(
      canvas,
      Alignment.center.inscribe(textPainter.size, Offset.zero & size).topLeft,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  void drawArc(Canvas canvas, Size size,
      {required double toPercent, required Color color}) {
    final center = size.center(Offset.zero);

    canvas.drawArc(
      Rect.fromCenter(
        center: center,
        width: size.width - 4,
        height: size.height - 4,
      ),
      vmath.radians(270),
      vmath.radians(-360 * toPercent / 100),
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..color = color
        ..strokeWidth = 4,
    );
  }
}
