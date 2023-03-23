import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:vector_math/vector_math.dart' as vmath;

class Gauge extends StatefulWidget {
  const Gauge({Key? key, required this.typeValue, void Function(double p1)? onChanged}) : super(key: key);

  final String typeValue;

  @override
  _GaugeState createState() => _GaugeState();
}

class _GaugeState extends State<Gauge> {
  String _temp = "0.0", _humi = "0.0";
  late Timer timer;

  Future<void> _fetchData() async {
    final tempResponse = await http.get(Uri.parse(
        'https://io.adafruit.com/api/v2/datdtnhcse/feeds/bbc-temp/data?limit=1'));
    final tempAPI = json.decode(tempResponse.body);
    final tempJSON = tempAPI.elementAt(0);
    final temp = tempJSON["value"];

    final humiResponse = await http.get(Uri.parse(
        'https://io.adafruit.com/api/v2/datdtnhcse/feeds/bbc-humi/data?limit=1'));
    final humiAPI = json.decode(humiResponse.body);
    final humiJSON = humiAPI.elementAt(0);
    final humi = humiJSON["value"];

    setState(() {
      _temp = temp;
      _humi = humi;
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
  if (widget.typeValue == "temperature") {
    return CustomPaint(
      painter: _MyPainter(value: double.parse(_temp), typeValue: "temperature"),
      child: Center(
        child: Text(
          "$_temp",
          style: GoogleFonts.inter(
            textStyle: const TextStyle(color: Colors.amber, fontSize: 40),
          ),
        ),
      ),
    );
  } else if (widget.typeValue == "humidity") {
    return CustomPaint(
      painter: _MyPainter(value: double.parse(_humi), typeValue: "humidity"),
      child: Center(
        child: Text(
          "$_humi",
          style: GoogleFonts.inter(
            textStyle: const TextStyle(color: Color.fromARGB(255, 7, 210, 255), fontSize: 40),
          ),
        ),
      ),
    );
  } else {
    return Container();
  }
}

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}

class _MyPainter extends CustomPainter {
  final double value;
  final String typeValue;

  _MyPainter({required this.value, required this.typeValue});

  @override
  void paint(Canvas canvas, Size size) {
    drawArc(canvas, size, toPercent: 100, color: Colors.grey[200]!);
    if (typeValue == "temperature") {
      drawArc(canvas, size,
        toPercent: ((value - 10) / 40) * 100, color: Colors.amber);
    // 10°C is 0%, 50°C is 100%
    } else if (typeValue == "humidity") {
      drawArc(canvas, size,
        toPercent: value, color: Color.fromARGB(255, 7, 210, 255));
    // 10°C is 0%, 50°C is 100%
    }
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
