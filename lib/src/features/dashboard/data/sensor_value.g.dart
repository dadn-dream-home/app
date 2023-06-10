// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_value.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sensorValueHash() => r'7d99db72fbe995330eaf25f846106335600520c8';

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

typedef SensorValueRef = StreamProviderRef<double>;

/// See also [sensorValue].
@ProviderFor(sensorValue)
const sensorValueProvider = SensorValueFamily();

/// See also [sensorValue].
class SensorValueFamily extends Family<AsyncValue<double>> {
  /// See also [sensorValue].
  const SensorValueFamily();

  /// See also [sensorValue].
  SensorValueProvider call(
    Feed feed,
  ) {
    return SensorValueProvider(
      feed,
    );
  }

  @override
  SensorValueProvider getProviderOverride(
    covariant SensorValueProvider provider,
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
  String? get name => r'sensorValueProvider';
}

/// See also [sensorValue].
class SensorValueProvider extends StreamProvider<double> {
  /// See also [sensorValue].
  SensorValueProvider(
    this.feed,
  ) : super.internal(
          (ref) => sensorValue(
            ref,
            feed,
          ),
          from: sensorValueProvider,
          name: r'sensorValueProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sensorValueHash,
          dependencies: SensorValueFamily._dependencies,
          allTransitiveDependencies:
              SensorValueFamily._allTransitiveDependencies,
        );

  final Feed feed;

  @override
  bool operator ==(Object other) {
    return other is SensorValueProvider && other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
