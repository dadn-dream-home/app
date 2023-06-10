import 'package:dream_home/src/common_widgets/async_value_ui.dart';
import 'package:dream_home/src/features/add_feed/data/feed_id_text_controller.dart';
import 'package:dream_home/src/features/add_feed/data/selected_feed_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grpc/grpc.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';
import 'add_feed_dialog_controller.dart';

class AddFeedDialog extends ConsumerStatefulWidget {
  const AddFeedDialog({Key? key}) : super(key: key);

  @override
  ConsumerState<AddFeedDialog> createState() => _AddFeedDialogState();
}

class _AddFeedDialogState extends ConsumerState<AddFeedDialog> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(addFeedDialogControllerProvider.notifier);

    ref.listen<AsyncValue<void>>(
      addFeedDialogControllerProvider,
      (_, state) {
        state.showSnackbarOnError(context);
      },
    );

    final isLoading = ref.watch(addFeedDialogControllerProvider).isLoading;

    return AlertDialog(
      title: const Text("Add Feed"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: const InputDecoration(labelText: "Feed ID"),
            controller: ref.watch(feedIdTextControllerProvider),
            enabled: !isLoading,
          ),
          DropdownButtonFormField(
            decoration: const InputDecoration(labelText: "Feed type"),
            value: ref.watch(selectedFeedTypeProvider),
            items: FeedType.values.map((FeedType value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value.name),
              );
            }).toList(),
            onChanged: (value) =>
                ref.read(selectedFeedTypeProvider.notifier).set(value!),
          ),
          if (ref.watch(addFeedDialogControllerProvider).hasError)
            Text(
              (ref.watch(addFeedDialogControllerProvider).error as GrpcError)
                  .message!,
              style: TextStyle(color: Colors.red),
            ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: isLoading ? null : () => controller.onCancel(context),
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: isLoading ? null : () => controller.add(context),
          child: const Text("Add"),
        ),
      ],
    );
  }
}
