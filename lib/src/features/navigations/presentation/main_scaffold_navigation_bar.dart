import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../data/selected_screen_index.dart';

class MainScaffoldNavigationBar extends ConsumerWidget {
  const MainScaffoldNavigationBar({super.key});

  static const List<Destination> destinations = [
    Destination(
      icon: Icon(Icons.space_dashboard_outlined),
      label: 'Dashboard',
      route: '/',
    ),
    Destination(
      icon: Icon(Icons.star_outlined),
      label: 'Summary',
      route: '/summary',
    ),
    Destination(
      icon: Icon(Icons.settings_suggest_outlined),
      label: 'Settings',
      route: '/settings',
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(selectedScreenIndexProvider, (_, index) {
      context.go(destinations[index].route);
    });

    return NavigationBar(
      destinations: destinations,
      selectedIndex: ref.watch(selectedScreenIndexProvider),
      onDestinationSelected:
          ref.watch(selectedScreenIndexProvider.notifier).set,
    );
  }
}

class Destination extends NavigationDestination {
  const Destination({
    super.key,
    required super.icon,
    required super.label,
    required this.route,
  });

  final String route;
}
