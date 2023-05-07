// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actuator_card_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$actuatorCardControllerHash() =>
    r'e6fd890e81580bd41ae4cb08dc698d59cd4990b4';

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

abstract class _$ActuatorCardController
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final Feed feed;

  Future<void> build(
    Feed feed,
  );
}

/// See also [ActuatorCardController].
@ProviderFor(ActuatorCardController)
const actuatorCardControllerProvider = ActuatorCardControllerFamily();

/// See also [ActuatorCardController].
class ActuatorCardControllerFamily extends Family<AsyncValue<void>> {
  /// See also [ActuatorCardController].
  const ActuatorCardControllerFamily();

  /// See also [ActuatorCardController].
  ActuatorCardControllerProvider call(
    Feed feed,
  ) {
    return ActuatorCardControllerProvider(
      feed,
    );
  }

  @override
  ActuatorCardControllerProvider getProviderOverride(
    covariant ActuatorCardControllerProvider provider,
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
  String? get name => r'actuatorCardControllerProvider';
}

/// See also [ActuatorCardController].
class ActuatorCardControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ActuatorCardController, void> {
  /// See also [ActuatorCardController].
  ActuatorCardControllerProvider(
    this.feed,
  ) : super.internal(
          () => ActuatorCardController()..feed = feed,
          from: actuatorCardControllerProvider,
          name: r'actuatorCardControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$actuatorCardControllerHash,
          dependencies: ActuatorCardControllerFamily._dependencies,
          allTransitiveDependencies:
              ActuatorCardControllerFamily._allTransitiveDependencies,
        );

  final Feed feed;

  @override
  bool operator ==(Object other) {
    return other is ActuatorCardControllerProvider && other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<void> runNotifierBuild(
    covariant ActuatorCardController notifier,
  ) {
    return notifier.build(
      feed,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
