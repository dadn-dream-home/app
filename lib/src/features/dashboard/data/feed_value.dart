import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grpc/backend_provider.dart';
import '../../../grpc/generated/backend.pbgrpc.dart';

part 'feed_value.g.dart';

@riverpod
Stream<double> feedValue(FeedValueRef ref, Feed feed) {
  final backend = ref.read(backendProvider);
  final stream = backend.streamFeedValues(StreamFeedValuesRequest(
    id: feed.id,
  ));
  return stream.map((response) => response.value);
}

class SensorValue {
  SensorValue(this.name, this.value);

  final String name;
  final double value;
}
