import 'package:flutter/material.dart';

/// This class represents a threshold for a value.
///
/// The value can either be above or below this threshold.
///
/// The threshold value and description are used to display the threshold in the
/// UI.
///
/// The color is used to indicate severity.
class Threshold {
  const Threshold({
    required this.value,
    required this.description,
    required this.color,
    this.isAbove = true,
  });

  final double value;
  final String description;
  final Color color;
  final bool isAbove;
}

const List<Threshold> temperatureThresholds = [
  Threshold(
      value: 10,
      description: 'Freezing',
      color: Colors.purple,
      isAbove: false), // < 10
  Threshold(value: 10, description: 'Too cold', color: Colors.blue),
  Threshold(value: 20, description: 'Cold', color: Colors.cyan),
  Threshold(value: 25, description: 'Ok', color: Colors.green),
  Threshold(value: 35, description: 'Hot', color: Colors.orange),
  Threshold(value: 40, description: 'Too hot', color: Colors.red),
];

const List<Threshold> humidityThresholds = [
  Threshold(
      value: 20,
      description: 'Too dry',
      color: Colors.red,
      isAbove: false), // < 50
  Threshold(value: 20, description: 'Normal', color: Colors.green),
  Threshold(value: 60, description: 'Humid', color: Colors.cyan),
  Threshold(value: 80, description: 'Wet', color: Colors.blue),
];
