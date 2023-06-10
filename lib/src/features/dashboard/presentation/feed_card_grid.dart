import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../feed_list/data/feed_list_provider.dart';
import 'feed_card.dart';

class FeedCardGrid extends ConsumerWidget {
  const FeedCardGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedListAsync = ref.watch(feedListProvider);

    if (feedListAsync is AsyncLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (feedListAsync is AsyncError) {
      return Text(feedListAsync.error.toString());
    }

    final feedList = feedListAsync.value!;

    return StaggeredGrid.count(
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      axisDirection: AxisDirection.down,
      crossAxisCount: 4,
      children: feedList
          // .sortedBy<num>((feed) => feed.type.value)
          .mapIndexed((index, feed) => index <= 1
              ? FeedCard.large(feed: feed)
              : FeedCard.medium(feed: feed))
          .toList(),
    );
  }
}
