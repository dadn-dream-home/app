import 'package:cron/cron.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../grpc/generated/backend.pbgrpc.dart';
import '../../../data/feed_config.dart';
import '../../../data/form_key.dart';

part 'actuator_config_nested_form_controller.freezed.dart';
part 'actuator_config_nested_form_controller.g.dart';

enum Weekday {
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
}

@freezed
class CronInputState with _$CronInputState {
  factory CronInputState({
    required TimeOfDay turnOnTime,
    required TimeOfDay turnOffTime,
    required List<Weekday> weekdays,
  }) = _CronInputState;

  CronInputState._();

  String get turnOnCronExpr {
    final weekdayInts = weekdays.map((e) => e.index).toList();
    final hours = [turnOnTime.hour];
    final minutes = [turnOnTime.minute];
    return '0 ${minutes.join(',')} ${hours.join(',')} * * ${weekdayInts.join(',')}';
  }

  String get turnOffCronExpr {
    final weekdayInts = weekdays.map((e) => e.index).toList();
    final hours = [turnOffTime.hour];
    final minutes = [turnOffTime.minute];
    return '0 ${minutes.join(',')} ${hours.join(',')} * * ${weekdayInts.join(',')}';
  }
}

@riverpod
class ActuatorConfigNestedFormController
    extends _$ActuatorConfigNestedFormController {
  @override
  CronInputState build(Feed feed) {
    final config = ref.read(feedConfigProvider(feed)).value!.actuatorConfig;
    final onSchedule = config.turnOffCronExpr != ""
        ? Schedule.parse(config.turnOnCronExpr)
        : Schedule();
    final offSchedule = config.turnOffCronExpr != ""
        ? Schedule.parse(config.turnOffCronExpr)
        : Schedule();
    state = CronInputState(
      turnOnTime: TimeOfDay(
        hour: onSchedule.hours?[0] ?? 0,
        minute: onSchedule.minutes?[0] ?? 0,
      ),
      turnOffTime: TimeOfDay(
        hour: offSchedule.hours?[0] ?? 0,
        minute: offSchedule.minutes?[0] ?? 0,
      ),
      weekdays:
          onSchedule.weekdays?.map((i) => Weekday.values[i % 7]).toList() ?? [],
    );

    ref.listenSelf((_, __) => updateFormData());

    return state;
  }

  void setTurnOnTime(DateTime? dateTime) {
    final time =
        TimeOfDay(hour: dateTime?.hour ?? 0, minute: dateTime?.minute ?? 0);
    state = state.copyWith(turnOnTime: time);
  }

  void setTurnOffTime(DateTime? dateTime) {
    final time =
        TimeOfDay(hour: dateTime?.hour ?? 0, minute: dateTime?.minute ?? 0);
    state = state.copyWith(turnOffTime: time);
  }

  void setWeekdays(List<Weekday>? weekdays) {
    state = state.copyWith(weekdays: weekdays ?? []);
  }

  void updateFormData() {
    final formData = ref.read(formKeyProvider(feed)).currentState!;
    formData.fields["actuatorConfig.turnOnCronExpr"]
        ?.didChange(state.turnOnCronExpr);
    formData.fields["actuatorConfig.turnOffCronExpr"]
        ?.didChange(state.turnOffCronExpr);
  }
}
