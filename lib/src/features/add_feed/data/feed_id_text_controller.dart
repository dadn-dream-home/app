import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_id_text_controller.g.dart';

@riverpod
class FeedIdTextController extends _$FeedIdTextController {
  @override
  Raw<TextEditingController> build() {
    return TextEditingController();
  }
}
