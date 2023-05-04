import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grpc/grpc.dart';

import 'add_feed_dialog_controller.dart';

class AddFeedDialog extends ConsumerStatefulWidget {
  const AddFeedDialog({Key? key}) : super(key: key);

  @override
  ConsumerState<AddFeedDialog> createState() => _AddFeedDialogState();
}

class _AddFeedDialogState extends ConsumerState<AddFeedDialog> {
  TextEditingController feedIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addFeedDialogControllerProvider);

    return AlertDialog(
      title: const Text("Add Feed"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: const InputDecoration(labelText: "Feed ID"),
            controller: feedIdController,
            enabled: !state.isLoading,
          ),
          if (state.hasError)
            Text(
              (state.error as GrpcError).message!,
              style: const TextStyle(color: Colors.red),
            ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: state.isLoading
              ? null
              : () => ref
                  .watch(addFeedDialogControllerProvider.notifier)
                  .onCancel(context),
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: state.isLoading
              ? null
              : () => ref
                  .watch(addFeedDialogControllerProvider.notifier)
                  .onAdd(context, feedIdController),
          child: const Text("Add"),
        ),
      ],
    );
  }
}
