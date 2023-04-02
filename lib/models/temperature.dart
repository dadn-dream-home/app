import 'dart:convert';

import 'package:dream_home/models/data_point.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Temperature implements DataPoint {
  final double value;

  Temperature(this.value);

  factory Temperature.fromJson(Map<String, dynamic> json) {
    return Temperature(double.parse(json['value']));
  }

  /// Convert temperature to percentage
  ///
  /// 10°C is 0% and 50°C is 100%
  @override
  double toPercent() {
    return clampDouble((value - 10) * 100 / 40, 0, 100);
  }

  @override
  String toString() {
    return '$value';
  }
}

Future<List<Temperature>> fetchTemperatureValues({int limit = 1}) async {
  final response = await http.get(Uri.parse(
      'https://io.adafruit.com/api/v2/datdtnhcse/feeds/bbc-temp/data?limit=$limit'));
  Iterable body = json.decode(response.body);
  return List<Temperature>.from(body.map((e) => Temperature.fromJson(e)));
}
