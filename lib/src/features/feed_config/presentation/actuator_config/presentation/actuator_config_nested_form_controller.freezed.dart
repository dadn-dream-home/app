// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actuator_config_nested_form_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CronInputState {
  DateTime get turnOnTime => throw _privateConstructorUsedError;
  DateTime get turnOffTime => throw _privateConstructorUsedError;
  List<Weekday> get weekdays => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CronInputStateCopyWith<CronInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CronInputStateCopyWith<$Res> {
  factory $CronInputStateCopyWith(
          CronInputState value, $Res Function(CronInputState) then) =
      _$CronInputStateCopyWithImpl<$Res, CronInputState>;
  @useResult
  $Res call(
      {DateTime turnOnTime, DateTime turnOffTime, List<Weekday> weekdays});
}

/// @nodoc
class _$CronInputStateCopyWithImpl<$Res, $Val extends CronInputState>
    implements $CronInputStateCopyWith<$Res> {
  _$CronInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? turnOnTime = null,
    Object? turnOffTime = null,
    Object? weekdays = null,
  }) {
    return _then(_value.copyWith(
      turnOnTime: null == turnOnTime
          ? _value.turnOnTime
          : turnOnTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      turnOffTime: null == turnOffTime
          ? _value.turnOffTime
          : turnOffTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weekdays: null == weekdays
          ? _value.weekdays
          : weekdays // ignore: cast_nullable_to_non_nullable
              as List<Weekday>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CronInputStateCopyWith<$Res>
    implements $CronInputStateCopyWith<$Res> {
  factory _$$_CronInputStateCopyWith(
          _$_CronInputState value, $Res Function(_$_CronInputState) then) =
      __$$_CronInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime turnOnTime, DateTime turnOffTime, List<Weekday> weekdays});
}

/// @nodoc
class __$$_CronInputStateCopyWithImpl<$Res>
    extends _$CronInputStateCopyWithImpl<$Res, _$_CronInputState>
    implements _$$_CronInputStateCopyWith<$Res> {
  __$$_CronInputStateCopyWithImpl(
      _$_CronInputState _value, $Res Function(_$_CronInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? turnOnTime = null,
    Object? turnOffTime = null,
    Object? weekdays = null,
  }) {
    return _then(_$_CronInputState(
      turnOnTime: null == turnOnTime
          ? _value.turnOnTime
          : turnOnTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      turnOffTime: null == turnOffTime
          ? _value.turnOffTime
          : turnOffTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weekdays: null == weekdays
          ? _value._weekdays
          : weekdays // ignore: cast_nullable_to_non_nullable
              as List<Weekday>,
    ));
  }
}

/// @nodoc

class _$_CronInputState extends _CronInputState {
  _$_CronInputState(
      {required this.turnOnTime,
      required this.turnOffTime,
      required final List<Weekday> weekdays})
      : _weekdays = weekdays,
        super._();

  @override
  final DateTime turnOnTime;
  @override
  final DateTime turnOffTime;
  final List<Weekday> _weekdays;
  @override
  List<Weekday> get weekdays {
    if (_weekdays is EqualUnmodifiableListView) return _weekdays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekdays);
  }

  @override
  String toString() {
    return 'CronInputState(turnOnTime: $turnOnTime, turnOffTime: $turnOffTime, weekdays: $weekdays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CronInputState &&
            (identical(other.turnOnTime, turnOnTime) ||
                other.turnOnTime == turnOnTime) &&
            (identical(other.turnOffTime, turnOffTime) ||
                other.turnOffTime == turnOffTime) &&
            const DeepCollectionEquality().equals(other._weekdays, _weekdays));
  }

  @override
  int get hashCode => Object.hash(runtimeType, turnOnTime, turnOffTime,
      const DeepCollectionEquality().hash(_weekdays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CronInputStateCopyWith<_$_CronInputState> get copyWith =>
      __$$_CronInputStateCopyWithImpl<_$_CronInputState>(this, _$identity);
}

abstract class _CronInputState extends CronInputState {
  factory _CronInputState(
      {required final DateTime turnOnTime,
      required final DateTime turnOffTime,
      required final List<Weekday> weekdays}) = _$_CronInputState;
  _CronInputState._() : super._();

  @override
  DateTime get turnOnTime;
  @override
  DateTime get turnOffTime;
  @override
  List<Weekday> get weekdays;
  @override
  @JsonKey(ignore: true)
  _$$_CronInputStateCopyWith<_$_CronInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
