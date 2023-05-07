import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';

part 'feed_card_controller.g.dart';

@riverpod
class FeedCardController extends _$FeedCardController {
  @override
  Future<void> build(Feed feed) async {
    this.feed = feed;
  }

  void onTap(BuildContext context) {
    context.push("/settings/${feed.id}");
  }
}
