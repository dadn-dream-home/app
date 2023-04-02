import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_math/vector_math.dart' as vmath;

class Gauge extends StatelessWidget {
  const Gauge({
    super.key,
    required this.color,
    required this.value,
    required this.toPercent,
  });

  final Color color;
  final double value;
  final double Function(double) toPercent;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _MyPainter(percent: toPercent(value), color: color),
      child: Center(
        child: Text(
          "$value",
          style: GoogleFonts.inter(
            textStyle: TextStyle(color: color, fontSize: 40),
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
    drawArc(canvas, size, percent: 100, color: Colors.grey[200]!);
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
