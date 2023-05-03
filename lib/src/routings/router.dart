import 'package:dream_home/src/features/dashboard/presentation/dashboard_screen.dart';
import 'package:dream_home/src/features/feed_list/presentation/settings_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) =>
          NoTransitionPage(child: DashboardScreen()),
    ),
    GoRoute(
      path: '/settings',
      pageBuilder: (context, state) =>
          NoTransitionPage(child: SettingsScreen()),
    ),
  ],
);
