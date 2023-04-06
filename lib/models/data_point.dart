import 'dart:convert';
import 'dart:core';

import 'package:dream_home/models/threshold.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

enum DataPointType {
  temperature,
  humidity,
}

class DataPoint {
  final DataPointType type;
  final double value;

  const DataPoint({required this.type, required this.value});

  factory DataPoint.temperature(double value) =>
      DataPoint(type: DataPointType.temperature, value: value);
  factory DataPoint.humidity(double value) =>
      DataPoint(type: DataPointType.humidity, value: value);

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
      case DataPointType.humidity:
        return value;
    }
  }

  // Returns the threshold that the data point's value falls into.
  Threshold getThreshold() {
    final thresholds = type == DataPointType.temperature
        ? temperatureThresholds
        : humidityThresholds;

    // The thresholds are sorted in ascending order, so iterate in reverse.
    // Also, skip the last threshold, since it's the lowest threshold.
    for (final t in thresholds.reversed.take(thresholds.length - 1)) {
      if (value >= t.value) {
        return t;
      }
    }
    return thresholds[0];
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
