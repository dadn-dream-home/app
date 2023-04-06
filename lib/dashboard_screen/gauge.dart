import 'package:dream_home/models/data_point.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_math/vector_math.dart' as vmath;

class Gauge extends StatelessWidget {
  const Gauge({
    super.key,
    required this.color,
    required this.value,
  });

  final Color color;
  final DataPoint value;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _MyPainter(color: color, value: value),
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
  _MyPainter({required this.value, required this.color});

  final DataPoint value;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    // outer circle
    drawArc(canvas, size, percent: 100, color: Colors.grey[200]!);
    // actual circle
    drawArc(canvas, size, percent: value.toPercent(), color: color);
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
