import 'package:go_router/go_router.dart';

import '../features/dashboard/presentation/dashboard_screen.dart';
import '../features/feed_config/feed_config_screen.dart';
import '../features/feed_list/presentation/settings_screen.dart';

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
    GoRoute(
      path: '/settings/:feedId',
      builder: (context, state) {
        final feedId = state.pathParameters['feedId']!;
        return FeedConfigScreen(feedId);
      },
    ),
  ],
);
