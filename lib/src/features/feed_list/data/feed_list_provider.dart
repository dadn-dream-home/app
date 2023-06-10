import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../extensions/feed.dart';
import '../../../grpc/backend_provider.dart';
import '../../../grpc/generated/backend.pbgrpc.dart';
import '../../dashboard/data/actuator_state.dart';
import '../../dashboard/data/sensor_value.dart';

part 'feed_list_provider.g.dart';

@riverpod
Stream<List<Feed>> feedList(FeedListRef ref) async* {
  final backend = ref.watch(backendProvider);
  final stream = backend.streamFeedsChanges(StreamFeedsChangesRequest());
  List<Feed> feeds = [];
  await for (final response in stream) {
    for (final feed in response.change.addeds) {
      feeds.add(feed);
    }
    for (final feedId in response.change.removedIDs) {
      final i = feeds.indexWhere((element) => element.id == feedId);
      if (i != -1) {
        feeds.removeAt(i);
        if (feeds[i].type.isSensor()) {
          ref.invalidate(sensorValueProvider(feeds[i]));
        } else if (feeds[i].type.isActuator()) {
          ref.invalidate(actuatorStateProvider(feeds[i]));
        }
      }
    }
    yield feeds;
  }
}
