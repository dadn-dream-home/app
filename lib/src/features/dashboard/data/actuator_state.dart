import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grpc/backend_provider.dart';
import '../../../grpc/generated/backend.pbgrpc.dart';

part 'actuator_state.g.dart';

@riverpod
Stream<bool> actuatorState(ActuatorStateRef ref, Feed feed) {
  final backend = ref.read(backendProvider);
  final stream = backend.streamActuatorStates(StreamActuatorStatesRequest(
    id: feed.id,
  ));
  return stream.map((response) => response.state);
}
