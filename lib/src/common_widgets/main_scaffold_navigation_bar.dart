import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScaffoldNavigationBar extends StatefulWidget {
  const MainScaffoldNavigationBar({super.key});
  @override
  State<MainScaffoldNavigationBar> createState() =>
      _MainScaffoldNavigationBarState();
}

class _MainScaffoldNavigationBarState extends State<MainScaffoldNavigationBar> {
  int selectedIndex = 0;

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

  void _onItemTapped(BuildContext ctx, int index) {
    ctx.go(destinations[index].route);
    setState(() => selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: destinations,
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) => _onItemTapped(context, index),
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
