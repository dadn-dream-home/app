import 'package:dream_home/src/grpc/backend_provider.dart';
import 'package:dream_home/src/grpc/generated/backend.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_config.g.dart';

@riverpod
Future<Config> feedConfig(FeedConfigRef ref, Feed feed) async {
  final res = await ref
      .read(backendProvider)
      .getFeedConfig(GetFeedConfigRequest(feed: feed));

  return res.config;
}
