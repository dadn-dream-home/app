import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';
import '../../feed_list/data/feed_list_provider.dart';
import '../../navigations/presentation/sub_scaffold.dart';
import '../data/form_key.dart';
import 'feed_config_screen_controller.dart';

class FeedConfigScreen extends ConsumerWidget {
  const FeedConfigScreen(this.feedId, {super.key});

  final String feedId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // the feeds must be there before the user natigate to the config screen
    final feed = ref.watch(feedListProvider).maybeWhen(
          data: (feeds) => feeds.firstWhere((e) => e.id == feedId),
          orElse: () => null,
        )!;

    final controller =
        ref.watch(feedConfigScreenControllerProvider(feed).notifier);
    final controllerState = ref.watch(feedConfigScreenControllerProvider(feed));

    final formKey = ref.watch(formKeyProvider(feed));

    return SubScaffold(
      title: feedId,
      actions: [
        TextButton(
          onPressed: controller.onSave,
          child: const Text("Save"),
        ),
      ],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Feed config"),
              FormBuilderTextField(
                name: "id",
                initialValue: feed.id,
                decoration: const InputDecoration(labelText: "Feed ID"),
              ),
              FormBuilderDropdown(
                name: "type",
                initialValue: feed.type,
                decoration: const InputDecoration(labelText: "Feed type"),
                items: FeedType.values
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.toString()),
                        ))
                    .toList(),
              ),
              const SizedBox(height: 32.0),
              const Text("Sensor config"),
              FormBuilderSwitch(
                name: "notification",
                initialValue: false,
                title: const Text("Notification", style: TextStyle()),
                subtitle: const Text("Enable notification for this feed"),
                onChanged: (v) =>
                    ref.read(formKeyProvider(feed).notifier).saveSwitches(),
              ),
              Row(
                children: [
                  Expanded(
                    child: FormBuilderTextField(
                      name: "lower",
                      initialValue: "",
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Lower threshold",
                        suffixText: "°C",
                      ),
                      enabled:
                          formKey.currentState?.fields['notification']?.value ??
                              false,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: FormBuilderTextField(
                      name: "upper",
                      initialValue: "",
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Upper threshold",
                        suffixText: "°C",
                      ),
                      enabled:
                          formKey.currentState?.fields['notification']?.value ??
                              false,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
