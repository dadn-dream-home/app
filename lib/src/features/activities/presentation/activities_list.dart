import 'package:dream_home/src/features/activities/data/activities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common_widgets/feed_icon.dart';
import '../../../grpc/generated/backend.pbgrpc.dart';

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

    return ListView.separated(
      shrinkWrap: true,
      itemCount: activities.value!.length,
      itemBuilder: (context, index) => ActivitiesListTile(
        activity: activities.value![index],
      ),
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}

class ActivitiesListTile extends StatelessWidget {
  const ActivitiesListTile({
    super.key,
    required this.activity,
  });

  final Activity activity;

  static const descriptions = {true: "Turned on", false: "Turned off"};

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(activity.feed.id),
      subtitle: Text(descriptions[activity.state]!),
      leading: FeedIcon(
        feed: activity.feed,
        color: activity.state ? null : Colors.grey[600],
      ),
      trailing: Text(
        activity.timestamp.toDateTime(toLocal: true).toString(),
        style: Theme.of(context).textTheme.labelSmall,
      ),
    );
  }
}
