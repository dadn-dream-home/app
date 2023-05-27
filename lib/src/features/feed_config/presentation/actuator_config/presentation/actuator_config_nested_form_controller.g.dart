// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actuator_config_nested_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$actuatorConfigNestedFormControllerHash() =>
    r'5e122090bd55b14c4e47bbca2d9c29c0ae859e07';

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

abstract class _$ActuatorConfigNestedFormController
    extends BuildlessAutoDisposeNotifier<CronInputState> {
  late final Feed feed;

  CronInputState build(
    Feed feed,
  );
}

/// See also [ActuatorConfigNestedFormController].
@ProviderFor(ActuatorConfigNestedFormController)
const actuatorConfigNestedFormControllerProvider =
    ActuatorConfigNestedFormControllerFamily();

/// See also [ActuatorConfigNestedFormController].
class ActuatorConfigNestedFormControllerFamily extends Family<CronInputState> {
  /// See also [ActuatorConfigNestedFormController].
  const ActuatorConfigNestedFormControllerFamily();

  /// See also [ActuatorConfigNestedFormController].
  ActuatorConfigNestedFormControllerProvider call(
    Feed feed,
  ) {
    return ActuatorConfigNestedFormControllerProvider(
      feed,
    );
  }

  @override
  ActuatorConfigNestedFormControllerProvider getProviderOverride(
    covariant ActuatorConfigNestedFormControllerProvider provider,
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
  String? get name => r'actuatorConfigNestedFormControllerProvider';
}

/// See also [ActuatorConfigNestedFormController].
class ActuatorConfigNestedFormControllerProvider
    extends AutoDisposeNotifierProviderImpl<ActuatorConfigNestedFormController,
        CronInputState> {
  /// See also [ActuatorConfigNestedFormController].
  ActuatorConfigNestedFormControllerProvider(
    this.feed,
  ) : super.internal(
          () => ActuatorConfigNestedFormController()..feed = feed,
          from: actuatorConfigNestedFormControllerProvider,
          name: r'actuatorConfigNestedFormControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$actuatorConfigNestedFormControllerHash,
          dependencies: ActuatorConfigNestedFormControllerFamily._dependencies,
          allTransitiveDependencies: ActuatorConfigNestedFormControllerFamily
              ._allTransitiveDependencies,
        );

  final Feed feed;

  @override
  bool operator ==(Object other) {
    return other is ActuatorConfigNestedFormControllerProvider &&
        other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  CronInputState runNotifierBuild(
    covariant ActuatorConfigNestedFormController notifier,
  ) {
    return notifier.build(
      feed,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
