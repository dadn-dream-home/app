import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../grpc/generated/backend.pbgrpc.dart';

part 'form_key.g.dart';

@riverpod
class FormKey extends _$FormKey {
  @override
  GlobalKey<FormBuilderState> build(Feed feed) {
    return GlobalKey<FormBuilderState>();
  }
}
