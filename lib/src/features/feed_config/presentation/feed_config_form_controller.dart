import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';
import '../data/feed_config.dart';

part 'feed_config_form_controller.g.dart';

@riverpod
class FeedConfigFormController extends _$FeedConfigFormController {
  @override
  FeedType build(Feed feed) {
    return ref.read(feedConfigProvider(feed)).value!.feedConfig.type;
  }

  void onChange(FeedType? value) {
    state = value ?? FeedType.values.first;
  }
}
