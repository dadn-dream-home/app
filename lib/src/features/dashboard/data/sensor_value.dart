import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grpc/backend_provider.dart';
import '../../../grpc/generated/backend.pbgrpc.dart';

part 'sensor_value.g.dart';

@riverpod
Stream<double> sensorValue(SensorValueRef ref, Feed feed) {
  final backend = ref.read(backendProvider);
  final stream = backend.streamSensorValues(StreamSensorValuesRequest(
    feed: feed,
  ));
  return stream.map((response) => response.value);
}
