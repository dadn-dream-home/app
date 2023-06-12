import 'package:collection/collection.dart';
import 'package:dream_home/src/extensions/feed.dart';
import 'package:dream_home/src/features/feed_config/data/feed_config.dart';
import 'package:dream_home/src/features/feed_config/data/form_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../../../grpc/generated/backend.pbgrpc.dart';
import '../../../../feed_list/data/feed_list_provider.dart';

part 'sensor_config_nested_form_controller.freezed.dart';
part 'sensor_config_nested_form_controller.g.dart';

@freezed
class State with _$State {
  const factory State({
    required bool hasNotification,
    required bool hasLowerTrigger,
    Feed? lowerFeed,
    required bool hasUpperTrigger,
    Feed? upperFeed,
    required SfRangeValues threshold,
  }) = _State;
  const State._();
}

@riverpod
class SensorConfigNestedFormController
    extends _$SensorConfigNestedFormController {
  @override
  State build(Feed feed) {
    final sensorConfig = ref.read(feedConfigProvider(feed)).value!.sensorConfig;

    ref.listenSelf((_, __) => updateFormData());

    final actuators = ref
        .read(feedListProvider)
        .value!
        .where((f) => f.type.isActuator())
        .where((f) => f.id != feed.id);

    return State(
      hasNotification: sensorConfig.hasNotification,
      threshold: SfRangeValues(
        sensorConfig.lowerThreshold.threshold,
        sensorConfig.upperThreshold.threshold,
      ),
      hasLowerTrigger: sensorConfig.lowerThreshold.hasTrigger,
      lowerFeed: actuators.firstWhereOrNull(
        (f) => sensorConfig.lowerThreshold.feed.id == f.id,
      ),
      hasUpperTrigger: sensorConfig.upperThreshold.hasTrigger,
      upperFeed: actuators.firstWhereOrNull(
        (f) => sensorConfig.upperThreshold.feed.id == f.id,
      ),
    );
  }

  void onChange(bool? value) {
    state = state.copyWith(hasNotification: value ?? false);
  }

  void onLowerTriggerChange(bool? value) {
    state = state.copyWith(hasLowerTrigger: value ?? false);
  }

  void onLowerFeedChange(Feed? value) {
    state = state.copyWith(lowerFeed: value);
  }

  void onUpperTriggerChange(bool? value) {
    state = state.copyWith(hasUpperTrigger: value ?? false);
  }

  void onUpperFeedChange(Feed? value) {
    state = state.copyWith(upperFeed: value);
  }

  void onRangeChanged(SfRangeValues values) {
    state = state.copyWith(threshold: values);
  }

  void updateFormData() {
    final formData = ref.read(formKeyProvider(feed)).currentState!;
    formData.fields["sensorConfig.lowerThreshold.threshold"]
        ?.didChange(state.threshold.start);
    formData.fields["sensorConfig.upperThreshold.threshold"]
        ?.didChange(state.threshold.end);
  }
}
