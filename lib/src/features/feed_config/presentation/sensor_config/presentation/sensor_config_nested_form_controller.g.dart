// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_config_nested_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sensorConfigNestedFormControllerHash() =>
    r'6c1d1f677ef0137adb16ca41f4f99077a9ad65b6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$SensorConfigNestedFormController
    extends BuildlessAutoDisposeNotifier<State> {
  late final Feed feed;

  State build(
    Feed feed,
  );
}

/// See also [SensorConfigNestedFormController].
@ProviderFor(SensorConfigNestedFormController)
const sensorConfigNestedFormControllerProvider =
    SensorConfigNestedFormControllerFamily();

/// See also [SensorConfigNestedFormController].
class SensorConfigNestedFormControllerFamily extends Family<State> {
  /// See also [SensorConfigNestedFormController].
  const SensorConfigNestedFormControllerFamily();

  /// See also [SensorConfigNestedFormController].
  SensorConfigNestedFormControllerProvider call(
    Feed feed,
  ) {
    return SensorConfigNestedFormControllerProvider(
      feed,
    );
  }

  @override
  SensorConfigNestedFormControllerProvider getProviderOverride(
    covariant SensorConfigNestedFormControllerProvider provider,
  ) {
    return call(
      provider.feed,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sensorConfigNestedFormControllerProvider';
}

/// See also [SensorConfigNestedFormController].
class SensorConfigNestedFormControllerProvider
    extends AutoDisposeNotifierProviderImpl<SensorConfigNestedFormController,
        State> {
  /// See also [SensorConfigNestedFormController].
  SensorConfigNestedFormControllerProvider(
    this.feed,
  ) : super.internal(
          () => SensorConfigNestedFormController()..feed = feed,
          from: sensorConfigNestedFormControllerProvider,
          name: r'sensorConfigNestedFormControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sensorConfigNestedFormControllerHash,
          dependencies: SensorConfigNestedFormControllerFamily._dependencies,
          allTransitiveDependencies:
              SensorConfigNestedFormControllerFamily._allTransitiveDependencies,
        );

  final Feed feed;

  @override
  bool operator ==(Object other) {
    return other is SensorConfigNestedFormControllerProvider &&
        other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  State runNotifierBuild(
    covariant SensorConfigNestedFormController notifier,
  ) {
    return notifier.build(
      feed,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
