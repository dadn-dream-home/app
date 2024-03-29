// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor_config_nested_form_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$State {
  bool get hasNotification => throw _privateConstructorUsedError;
  bool get hasLowerTrigger => throw _privateConstructorUsedError;
  Feed? get lowerFeed => throw _privateConstructorUsedError;
  bool get hasUpperTrigger => throw _privateConstructorUsedError;
  Feed? get upperFeed => throw _privateConstructorUsedError;
  SfRangeValues get threshold => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateCopyWith<State> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCopyWith<$Res> {
  factory $StateCopyWith(State value, $Res Function(State) then) =
      _$StateCopyWithImpl<$Res, State>;
  @useResult
  $Res call(
      {bool hasNotification,
      bool hasLowerTrigger,
      Feed? lowerFeed,
      bool hasUpperTrigger,
      Feed? upperFeed,
      SfRangeValues threshold});
}

/// @nodoc
class _$StateCopyWithImpl<$Res, $Val extends State>
    implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasNotification = null,
    Object? hasLowerTrigger = null,
    Object? lowerFeed = freezed,
    Object? hasUpperTrigger = null,
    Object? upperFeed = freezed,
    Object? threshold = null,
  }) {
    return _then(_value.copyWith(
      hasNotification: null == hasNotification
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLowerTrigger: null == hasLowerTrigger
          ? _value.hasLowerTrigger
          : hasLowerTrigger // ignore: cast_nullable_to_non_nullable
              as bool,
      lowerFeed: freezed == lowerFeed
          ? _value.lowerFeed
          : lowerFeed // ignore: cast_nullable_to_non_nullable
              as Feed?,
      hasUpperTrigger: null == hasUpperTrigger
          ? _value.hasUpperTrigger
          : hasUpperTrigger // ignore: cast_nullable_to_non_nullable
              as bool,
      upperFeed: freezed == upperFeed
          ? _value.upperFeed
          : upperFeed // ignore: cast_nullable_to_non_nullable
              as Feed?,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as SfRangeValues,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res> implements $StateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasNotification,
      bool hasLowerTrigger,
      Feed? lowerFeed,
      bool hasUpperTrigger,
      Feed? upperFeed,
      SfRangeValues threshold});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res> extends _$StateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasNotification = null,
    Object? hasLowerTrigger = null,
    Object? lowerFeed = freezed,
    Object? hasUpperTrigger = null,
    Object? upperFeed = freezed,
    Object? threshold = null,
  }) {
    return _then(_$_State(
      hasNotification: null == hasNotification
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLowerTrigger: null == hasLowerTrigger
          ? _value.hasLowerTrigger
          : hasLowerTrigger // ignore: cast_nullable_to_non_nullable
              as bool,
      lowerFeed: freezed == lowerFeed
          ? _value.lowerFeed
          : lowerFeed // ignore: cast_nullable_to_non_nullable
              as Feed?,
      hasUpperTrigger: null == hasUpperTrigger
          ? _value.hasUpperTrigger
          : hasUpperTrigger // ignore: cast_nullable_to_non_nullable
              as bool,
      upperFeed: freezed == upperFeed
          ? _value.upperFeed
          : upperFeed // ignore: cast_nullable_to_non_nullable
              as Feed?,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as SfRangeValues,
    ));
  }
}

/// @nodoc

class _$_State extends _State {
  const _$_State(
      {required this.hasNotification,
      required this.hasLowerTrigger,
      this.lowerFeed,
      required this.hasUpperTrigger,
      this.upperFeed,
      required this.threshold})
      : super._();

  @override
  final bool hasNotification;
  @override
  final bool hasLowerTrigger;
  @override
  final Feed? lowerFeed;
  @override
  final bool hasUpperTrigger;
  @override
  final Feed? upperFeed;
  @override
  final SfRangeValues threshold;

  @override
  String toString() {
    return 'State(hasNotification: $hasNotification, hasLowerTrigger: $hasLowerTrigger, lowerFeed: $lowerFeed, hasUpperTrigger: $hasUpperTrigger, upperFeed: $upperFeed, threshold: $threshold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            (identical(other.hasNotification, hasNotification) ||
                other.hasNotification == hasNotification) &&
            (identical(other.hasLowerTrigger, hasLowerTrigger) ||
                other.hasLowerTrigger == hasLowerTrigger) &&
            (identical(other.lowerFeed, lowerFeed) ||
                other.lowerFeed == lowerFeed) &&
            (identical(other.hasUpperTrigger, hasUpperTrigger) ||
                other.hasUpperTrigger == hasUpperTrigger) &&
            (identical(other.upperFeed, upperFeed) ||
                other.upperFeed == upperFeed) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasNotification, hasLowerTrigger,
      lowerFeed, hasUpperTrigger, upperFeed, threshold);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);
}

abstract class _State extends State {
  const factory _State(
      {required final bool hasNotification,
      required final bool hasLowerTrigger,
      final Feed? lowerFeed,
      required final bool hasUpperTrigger,
      final Feed? upperFeed,
      required final SfRangeValues threshold}) = _$_State;
  const _State._() : super._();

  @override
  bool get hasNotification;
  @override
  bool get hasLowerTrigger;
  @override
  Feed? get lowerFeed;
  @override
  bool get hasUpperTrigger;
  @override
  Feed? get upperFeed;
  @override
  SfRangeValues get threshold;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
