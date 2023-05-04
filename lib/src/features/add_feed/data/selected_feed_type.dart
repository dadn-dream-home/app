import 'package:dream_home/src/grpc/generated/backend.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_feed_type.g.dart';

@riverpod
class SelectedFeedType extends _$SelectedFeedType {
  @override
  FeedType build() {
    return FeedType.values.first;
  }

  void set(FeedType value) {
    state = value;
  }
}
