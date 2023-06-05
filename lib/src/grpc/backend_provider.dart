import 'package:dream_home/src/grpc/generated/backend.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'backend_provider.g.dart';

@Riverpod(keepAlive: true)
BackendServiceClient backend(BackendRef ref) {
  return BackendServiceClient(ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  ));
}
