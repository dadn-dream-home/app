import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grpc/backend_provider.dart';
import '../../../grpc/generated/backend.pbgrpc.dart';

part 'notification.g.dart';

@Riverpod(keepAlive: true)
Stream<Notification> notifications(NotificationsRef ref) {
  final backend = ref.read(backendProvider);
  final res = backend.streamNotifications(StreamNotificationsRequest());
  return res.map((event) => event.notification);
}
