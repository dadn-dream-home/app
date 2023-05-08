// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_config_screen_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$feedConfigScreenControllerHash() =>
    r'24e93ef82a069c2333bd5a4d0c4f77c271a04a3e';

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

abstract class _$FeedConfigScreenController
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final Feed feed;

  FutureOr<void> build(
    Feed feed,
  );
}

/// See also [FeedConfigScreenController].
@ProviderFor(FeedConfigScreenController)
const feedConfigScreenControllerProvider = FeedConfigScreenControllerFamily();

/// See also [FeedConfigScreenController].
class FeedConfigScreenControllerFamily extends Family<AsyncValue<void>> {
  /// See also [FeedConfigScreenController].
  const FeedConfigScreenControllerFamily();

  /// See also [FeedConfigScreenController].
  FeedConfigScreenControllerProvider call(
    Feed feed,
  ) {
    return FeedConfigScreenControllerProvider(
      feed,
    );
  }

  @override
  FeedConfigScreenControllerProvider getProviderOverride(
    covariant FeedConfigScreenControllerProvider provider,
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
  String? get name => r'feedConfigScreenControllerProvider';
}

/// See also [FeedConfigScreenController].
class FeedConfigScreenControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FeedConfigScreenController,
        void> {
  /// See also [FeedConfigScreenController].
  FeedConfigScreenControllerProvider(
    this.feed,
  ) : super.internal(
          () => FeedConfigScreenController()..feed = feed,
          from: feedConfigScreenControllerProvider,
          name: r'feedConfigScreenControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$feedConfigScreenControllerHash,
          dependencies: FeedConfigScreenControllerFamily._dependencies,
          allTransitiveDependencies:
              FeedConfigScreenControllerFamily._allTransitiveDependencies,
        );

  final Feed feed;

  @override
  bool operator ==(Object other) {
    return other is FeedConfigScreenControllerProvider && other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<void> runNotifierBuild(
    covariant FeedConfigScreenController notifier,
  ) {
    return notifier.build(
      feed,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
