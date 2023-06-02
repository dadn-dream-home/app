import 'package:dream_home/src/grpc/generated/backend.pbgrpc.dart';

extension Limits on FeedType {
  double max() {
    switch (this) {
      case FeedType.TEMPERATURE:
        return 40;
      case FeedType.HUMIDITY:
        return 100;
      default:
        throw UnimplementedError();
    }
  }

  double min() {
    switch (this) {
      case FeedType.TEMPERATURE:
        return 10;
      case FeedType.HUMIDITY:
        return 0;
      default:
        throw UnimplementedError();
    }
  }
}

extension Category on FeedType {
  bool isSensor() {
    switch (this) {
      case FeedType.TEMPERATURE:
      case FeedType.HUMIDITY:
        return true;
      case FeedType.LIGHT:
        return false;
      default:
        throw UnimplementedError();
    }
  }

  bool isActuator() {
    switch (this) {
      case FeedType.TEMPERATURE:
      case FeedType.HUMIDITY:
        return false;
      case FeedType.LIGHT:
        return true;
      default:
        throw UnimplementedError();
    }
  }

  String unit() {
    switch (this) {
      case FeedType.TEMPERATURE:
        return "°C";
      case FeedType.HUMIDITY:
        return "%";
      default:
        throw UnimplementedError();
    }
  }
}
