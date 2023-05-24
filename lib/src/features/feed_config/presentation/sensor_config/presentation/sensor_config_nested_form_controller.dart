import 'package:dream_home/src/features/feed_config/data/feed_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../grpc/generated/backend.pbgrpc.dart';

part 'sensor_config_nested_form_controller.g.dart';

@riverpod
class SensorConfigNestedFormController
    extends _$SensorConfigNestedFormController {
  @override
  bool build(Feed feed) {
    return ref
        .read(feedConfigProvider(feed))
        .value!
        .sensorConfig
        .hasNotification;
  }

  void onChange(bool? value) {
    state = value ?? false;
  }
}
