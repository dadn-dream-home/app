import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';

class FeedListItem extends StatelessWidget {
  const FeedListItem({
    super.key,
    required this.feed,
  });

  final Feed feed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(feed.id),
      onTap: () => context.push("/settings/${feed.id}"),
    );
  }
}
