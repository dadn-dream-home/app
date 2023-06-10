import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/notification.dart';

class NotificationSubscriber extends ConsumerWidget {
  const NotificationSubscriber({super.key, required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(notificationsProvider, (_, notification) {
      if (!notification.hasValue) return;
      print(notification);
      final snackBar = SnackBar(
        content: Text(notification.value!.message),
        showCloseIcon: true,
        duration: const Duration(seconds: 3),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        snackBar,
      );
    });

    return Container(child: child);
  }
}
