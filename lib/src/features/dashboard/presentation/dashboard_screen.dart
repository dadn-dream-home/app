import 'package:dream_home/src/features/dashboard/presentation/feed_card_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../navigations/presentation/main_scaffold.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainScaffold(
      title: "Dream Home",
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 8),
          child: FeedCardGrid(),
        ),
      ),
    );
  }
}
