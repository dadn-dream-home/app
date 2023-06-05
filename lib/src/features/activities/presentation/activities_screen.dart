import 'package:dream_home/src/features/activities/data/activities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../navigations/presentation/main_scaffold.dart';

class ActivitiesScreen extends ConsumerWidget {
  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainScaffold(
      title: "Activity",
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 8),
          child: ActivitiesList(),
        ),
      ),
    );
  }
}

class ActivitiesList extends ConsumerWidget {
  const ActivitiesList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activities = ref.watch(activitiesProvider);

    if (!activities.hasValue) {
      return CircularProgressIndicator();
    }

    return ListView(
      shrinkWrap: true,
      children: activities.value!.reversed
          .map((e) => ListTile(
                title: Text(e.feed.id),
                subtitle: Text(e.state.toString()),
              ))
          .toList(),
    );
  }
}
