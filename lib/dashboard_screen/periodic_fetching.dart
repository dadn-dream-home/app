import 'dart:async';

import 'package:dream_home/models/data_point.dart';
import 'package:flutter/material.dart';

mixin PeriodicFetching<T extends StatefulWidget> on State<T> {
  late Timer timer;
  DataPoint get value;
  set value(DataPoint value) {
    this.value = value;
  }

  void restartFetching({Duration duration = const Duration()}) {
    timer = Timer(duration, handleTimeout);
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void handleTimeout() async {
    final dataPoints = await fetchDataPoints(type: value.type);

    setState(() {
      value = dataPoints[0];
      restartFetching(duration: const Duration(seconds: 3));
    });
  }
}
