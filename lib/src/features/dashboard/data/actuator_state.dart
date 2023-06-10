import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grpc/backend_provider.dart';
import '../../../grpc/generated/backend.pbgrpc.dart';

part 'actuator_state.g.dart';

@Riverpod(keepAlive: true)
Stream<bool> actuatorState(ActuatorStateRef ref, Feed feed) {
  final backend = ref.read(backendProvider);
  final stream = backend.streamActuatorStates(StreamActuatorStatesRequest(
    feed: feed,
  ));
  return stream.map((response) => response.state);
}
