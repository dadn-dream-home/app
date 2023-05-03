import 'package:dream_home/dashboard_screen.dart';
import 'package:dream_home/lighting_screen.dart';
import 'package:dream_home/setting_screen.dart';
import 'package:dream_home/widgets/app_bar.dart';
import 'package:dream_home/widgets/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // runApp(const MyApp(Dashboard()));
  runApp(ProviderScope(child: MyApp(Lighting())));
}

class MyApp extends StatelessWidget {
  final Widget page;

  const MyApp(this.page, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme: GoogleFonts.outfitTextTheme(),
        ),
        routerConfig: GoRouter(
          initialLocation: '/dashboard',
          routes: [
            ShellRoute(
                builder: (context, state, child) {
                  String heading;
                  if (state.location == '/dashboard') {
                    heading = "Dream Home";
                  } else if (state.location.startsWith('/settings')) {
                    heading = "Settings";
                  } else {
                    heading = "";
                  }

                  return MyScaffold(
                    appBar: MyAppBar(
                      heading: heading,
                      iconData: Icons.account_circle_outlined,
                    ),
                    body: child,
                  );
                },
                routes: [
                  GoRoute(
                    path: '/dashboard',
                    pageBuilder: (context, state) =>
                        NoTransitionPage(child: Dashboard()),
                  ),
                  GoRoute(
                    path: '/settings',
                    pageBuilder: (context, state) =>
                        NoTransitionPage(child: Setting()),
                  ),
                ])
          ],
        ));
  }
}
