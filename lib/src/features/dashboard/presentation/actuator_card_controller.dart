import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grpc/backend_provider.dart';
import '../../../grpc/generated/backend.pbgrpc.dart';

part 'actuator_card_controller.g.dart';

@riverpod
class ActuatorCardController extends _$ActuatorCardController {
  @override
  Future<void> build(Feed feed) async {
    this.feed = feed;
  }

  Future<void> onChange(bool value) async {
    final backend = ref.read(backendProvider);
    await backend.setActuatorState(SetActuatorStateRequest(
      feed: feed,
      state: value,
    ));
  }
}
