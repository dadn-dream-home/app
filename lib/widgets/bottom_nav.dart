import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  void _onItemTapped(BuildContext ctx, int index) {
    switch (index) {
      case 0:
        ctx.go("/dashboard");
        break;
      case 2:
        ctx.go("/settings");
        break;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.space_dashboard_outlined,
          ),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.star_outlined,
          ),
          label: 'Summary',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings_suggest_outlined,
          ),
          label: 'Settings',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: (index) => _onItemTapped(context, index),
    );
  }
}
