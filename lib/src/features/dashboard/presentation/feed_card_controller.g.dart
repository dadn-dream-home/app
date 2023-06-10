// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_card_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$feedCardControllerHash() =>
    r'5ea28a0e628de7b644738d1015bcc54351047ab0';

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

abstract class _$FeedCardController
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final Feed feed;

  Future<void> build(
    Feed feed,
  );
}

/// See also [FeedCardController].
@ProviderFor(FeedCardController)
const feedCardControllerProvider = FeedCardControllerFamily();

/// See also [FeedCardController].
class FeedCardControllerFamily extends Family<AsyncValue<void>> {
  /// See also [FeedCardController].
  const FeedCardControllerFamily();

  /// See also [FeedCardController].
  FeedCardControllerProvider call(
    Feed feed,
  ) {
    return FeedCardControllerProvider(
      feed,
    );
  }

  @override
  FeedCardControllerProvider getProviderOverride(
    covariant FeedCardControllerProvider provider,
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
  String? get name => r'feedCardControllerProvider';
}

/// See also [FeedCardController].
class FeedCardControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FeedCardController, void> {
  /// See also [FeedCardController].
  FeedCardControllerProvider(
    this.feed,
  ) : super.internal(
          () => FeedCardController()..feed = feed,
          from: feedCardControllerProvider,
          name: r'feedCardControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$feedCardControllerHash,
          dependencies: FeedCardControllerFamily._dependencies,
          allTransitiveDependencies:
              FeedCardControllerFamily._allTransitiveDependencies,
        );

  final Feed feed;

  @override
  bool operator ==(Object other) {
    return other is FeedCardControllerProvider && other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<void> runNotifierBuild(
    covariant FeedCardController notifier,
  ) {
    return notifier.build(
      feed,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
