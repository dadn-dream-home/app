import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:vector_math/vector_math.dart' as vmath;

class Gauge extends StatefulWidget {
  const Gauge({Key? key}) : super(key: key);

  @override
  _GaugeState createState() => _GaugeState();
}

class _GaugeState extends State<Gauge> {
  String _value = "0.0";
  late Timer timer;

  Future<void> _fetchData() async {
    final response = await http.get(Uri.parse(
        'https://io.adafruit.com/api/v2/datdtnhcse/feeds/bbc-temp/data?limit=1'));
    final api = json.decode(response.body);
    final jsonString = api.elementAt(0);
    final value = jsonString["value"];
    setState(() {
      _value = value;
    });
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      _fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _MyPainter(value: double.parse(_value)),
      child: Center(
        child: Text(
          "$_value",
          style: GoogleFonts.inter(
            textStyle: const TextStyle(color: Colors.amber, fontSize: 40),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}

class _MyPainter extends CustomPainter {
  final double value;

  _MyPainter({required this.value});

  @override
  void paint(Canvas canvas, Size size) {
    drawArc(canvas, size, toPercent: 100, color: Colors.grey[200]!);
    drawArc(canvas, size,
        toPercent: ((value - 10) / 40) * 100, color: Colors.amber);
    // 10°C is 0%, 50°C is 100%
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
