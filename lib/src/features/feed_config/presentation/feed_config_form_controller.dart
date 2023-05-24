import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grpc/backend_provider.dart';
import '../../../grpc/generated/backend.pbgrpc.dart';
import '../data/form_key.dart';

part 'feed_config_form_controller.g.dart';

@riverpod
class FeedConfigFormController extends _$FeedConfigFormController {
  @override
  Future<Config> build(Feed feed) async {
    final backend = ref.read(backendProvider);
    final res = await backend.getFeedConfig(GetFeedConfigRequest(feed: feed));
    print(res.config);
    return res.config;
  }

  void onChange() {
    if (ref.read(formKeyProvider(feed)).currentState!.validate()) {
      ref.read(formKeyProvider(feed)).currentState!.save();
      state = AsyncData(state.value!
        ..mergeFromProto3Json(
            ref.read(formKeyProvider(feed)).currentState!.value));
    }

    print(state.value!);
  }
}
