// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_value.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$feedValueHash() => r'af397a9acdc9c68048af57de0b92771dd0e8a9e0';

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

typedef FeedValueRef = AutoDisposeStreamProviderRef<double>;

/// See also [feedValue].
@ProviderFor(feedValue)
const feedValueProvider = FeedValueFamily();

/// See also [feedValue].
class FeedValueFamily extends Family<AsyncValue<double>> {
  /// See also [feedValue].
  const FeedValueFamily();

  /// See also [feedValue].
  FeedValueProvider call(
    Feed feed,
  ) {
    return FeedValueProvider(
      feed,
    );
  }

  @override
  FeedValueProvider getProviderOverride(
    covariant FeedValueProvider provider,
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
  String? get name => r'feedValueProvider';
}

/// See also [feedValue].
class FeedValueProvider extends AutoDisposeStreamProvider<double> {
  /// See also [feedValue].
  FeedValueProvider(
    this.feed,
  ) : super.internal(
          (ref) => feedValue(
            ref,
            feed,
          ),
          from: feedValueProvider,
          name: r'feedValueProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$feedValueHash,
          dependencies: FeedValueFamily._dependencies,
          allTransitiveDependencies: FeedValueFamily._allTransitiveDependencies,
        );

  final Feed feed;

  @override
  bool operator ==(Object other) {
    return other is FeedValueProvider && other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
