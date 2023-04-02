import 'dart:convert';

import 'package:dream_home/models/data_point.dart';
import 'package:http/http.dart' as http;

class Moisture implements DataPoint {
  final double value;

  Moisture(this.value);

  factory Moisture.fromJson(Map<String, dynamic> json) {
    return Moisture(double.parse(json['moisture']));
  }

  /// Convert moisture to percentage
  /// 0% is 0% and 100% is 100%
  @override
  double toPercent() {
    return value;
  }

  @override
  String toString() {
    return '$value';
  }
}

Future<List<Moisture>> fetchMoistureValues({int limit = 1}) async {
  final response = await http.get(Uri.parse(
      'https://io.adafruit.com/api/v2/datdtnhcse/feeds/bbc-humi/data?limit=$limit'));
  Iterable body = json.decode(response.body);
  return List<Moisture>.from(body.map((e) => Moisture.fromJson(e)));
}
