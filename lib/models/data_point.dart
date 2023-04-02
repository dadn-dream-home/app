import 'dart:convert';
import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

enum DataPointType {
  temperature,
  moisture,
}

class DataPoint {
  final DataPointType type;
  final double value;

  DataPoint({required this.type, required this.value});

  factory DataPoint.temperature(double value) =>
      DataPoint(type: DataPointType.temperature, value: value);
  factory DataPoint.moisture(double value) =>
      DataPoint(type: DataPointType.moisture, value: value);

  factory DataPoint.fromJson(
    Map<String, dynamic> json, {
    required DataPointType type,
  }) {
    final value = double.parse(json['value']);
    return DataPoint(type: type, value: value);
  }

  /// Convert [value] to percentage
  double toPercent() {
    switch (type) {
      case DataPointType.temperature:
        return clampDouble((value - 10) * 100 / 40, 0, 100);
      case DataPointType.moisture:
        return value;
    }
  }

  @override
  String toString() {
    return '$value';
  }
}

Future<List<DataPoint>> fetchDataPoints({
  required DataPointType type,
  int limit = 1,
}) async {
  final feed = type == DataPointType.temperature ? 'bbc-temp' : 'bbc-humi';

  final response = await http.get(Uri.parse(
      'https://io.adafruit.com/api/v2/datdtnhcse/feeds/$feed/data?limit=$limit'));

  Iterable body = json.decode(response.body);
  return List<DataPoint>.from(
    body.map((e) => DataPoint.fromJson(e, type: type)),
  );
}
