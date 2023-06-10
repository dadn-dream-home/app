import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';
import '../data/actuator_state.dart';
import 'actuator_card_controller.dart';
import 'feed_card.dart';

class ActuatorCardLarge extends FeedCardLarge {
  const ActuatorCardLarge({
    super.key,
    required Feed feed,
  }) : super(feed: feed);

  @override
  Widget buildLarge(BuildContext context, WidgetRef ref) {
    return ActuatorCardMedium(feed: feed).buildMedium(context, ref);
  }
}

class ActuatorCardMedium extends FeedCardMedium {
  const ActuatorCardMedium({
    super.key,
    required Feed feed,
  }) : super(feed: feed);

  @override
  Widget buildMedium(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(actuatorStateProvider(feed));
    final controller = ref.watch(actuatorCardControllerProvider(feed).notifier);

    return stateAsync.when(
      data: (value) => Switch(
        value: value,
        onChanged: controller.onChange,
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, s) => const Text(""),
    );
  }
}
