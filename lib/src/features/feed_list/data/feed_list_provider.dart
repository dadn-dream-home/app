import 'package:dream_home/src/grpc/backend_provider.dart';
import 'package:dream_home/src/grpc/generated/backend.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_list_provider.g.dart';

@riverpod
Stream<List<Feed>> feedList(FeedListRef ref) async* {
  final backend = ref.watch(backendProvider);
  final stream = backend.streamFeedsChanges(StreamFeedsChangesRequest());
  List<Feed> feeds = [];
  await for (final response in stream) {
    for (final feed in response.change.added) {
      feeds.add(feed);
    }
    for (final feed in response.change.removed) {
      feeds.removeWhere((element) => element.id == feed);
    }
    yield feeds;
  }
}
