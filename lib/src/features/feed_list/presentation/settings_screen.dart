import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../navigations/presentation/main_scaffold.dart';
import '../data/feed_list_provider.dart';
import 'feed_list_item.dart';
import 'settings_screen_controller.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  build(context, ref) {
    final feedListAsync = ref.watch(feedListProvider);

    return MainScaffold(
      title: "Settings",
      // add feed action
      actions: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () => ref
              .read(settingsScreenControllerProvider.notifier)
              .createFeed(context),
        ),
      ],
      body: feedListAsync.when(
        loading: CircularProgressIndicator.new,
        data: (feedList) => ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: feedList.length,
          itemBuilder: (context, index) => FeedListItem(feed: feedList[index]),
        ),
        error: (error, trace) => Text(error.toString()),
      ),
    );
  }
}
