// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_config.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$feedConfigHash() => r'03d136e9acc6c9a57cdddf8b767e026c59838940';

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

typedef FeedConfigRef = AutoDisposeFutureProviderRef<Config>;

/// See also [feedConfig].
@ProviderFor(feedConfig)
const feedConfigProvider = FeedConfigFamily();

/// See also [feedConfig].
class FeedConfigFamily extends Family<AsyncValue<Config>> {
  /// See also [feedConfig].
  const FeedConfigFamily();

  /// See also [feedConfig].
  FeedConfigProvider call(
    Feed feed,
  ) {
    return FeedConfigProvider(
      feed,
    );
  }

  @override
  FeedConfigProvider getProviderOverride(
    covariant FeedConfigProvider provider,
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
  String? get name => r'feedConfigProvider';
}

/// See also [feedConfig].
class FeedConfigProvider extends AutoDisposeFutureProvider<Config> {
  /// See also [feedConfig].
  FeedConfigProvider(
    this.feed,
  ) : super.internal(
          (ref) => feedConfig(
            ref,
            feed,
          ),
          from: feedConfigProvider,
          name: r'feedConfigProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$feedConfigHash,
          dependencies: FeedConfigFamily._dependencies,
          allTransitiveDependencies:
              FeedConfigFamily._allTransitiveDependencies,
        );

  final Feed feed;

  @override
  bool operator ==(Object other) {
    return other is FeedConfigProvider && other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
