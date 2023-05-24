// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actuator_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$actuatorStateHash() => r'c3936ff2f6aff930b741488368bb16e66c16395c';

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

typedef ActuatorStateRef = AutoDisposeStreamProviderRef<bool>;

/// See also [actuatorState].
@ProviderFor(actuatorState)
const actuatorStateProvider = ActuatorStateFamily();

/// See also [actuatorState].
class ActuatorStateFamily extends Family<AsyncValue<bool>> {
  /// See also [actuatorState].
  const ActuatorStateFamily();

  /// See also [actuatorState].
  ActuatorStateProvider call(
    Feed feed,
  ) {
    return ActuatorStateProvider(
      feed,
    );
  }

  @override
  ActuatorStateProvider getProviderOverride(
    covariant ActuatorStateProvider provider,
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
  String? get name => r'actuatorStateProvider';
}

/// See also [actuatorState].
class ActuatorStateProvider extends AutoDisposeStreamProvider<bool> {
  /// See also [actuatorState].
  ActuatorStateProvider(
    this.feed,
  ) : super.internal(
          (ref) => actuatorState(
            ref,
            feed,
          ),
          from: actuatorStateProvider,
          name: r'actuatorStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$actuatorStateHash,
          dependencies: ActuatorStateFamily._dependencies,
          allTransitiveDependencies:
              ActuatorStateFamily._allTransitiveDependencies,
        );

  final Feed feed;

  @override
  bool operator ==(Object other) {
    return other is ActuatorStateProvider && other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
