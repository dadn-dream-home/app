import 'package:dream_home/src/grpc/backend_provider.dart';
import 'package:dream_home/src/grpc/generated/backend.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_list_provider.g.dart';

@riverpod
Future<List<Feed>> feedList(FeedListRef ref) async {
  final backend = ref.watch(backendProvider);
  final response = await backend.listFeeds(ListFeedsRequest());
  return response.feeds;
}
