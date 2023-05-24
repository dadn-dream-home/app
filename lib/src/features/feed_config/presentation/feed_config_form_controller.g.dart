// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_config_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$feedConfigFormControllerHash() =>
    r'71ac31cb146b0689b5b6f8b48028c21f865e9130';

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

abstract class _$FeedConfigFormController
    extends BuildlessAutoDisposeAsyncNotifier<Config> {
  late final Feed feed;

  Future<Config> build(
    Feed feed,
  );
}

/// See also [FeedConfigFormController].
@ProviderFor(FeedConfigFormController)
const feedConfigFormControllerProvider = FeedConfigFormControllerFamily();

/// See also [FeedConfigFormController].
class FeedConfigFormControllerFamily extends Family<AsyncValue<Config>> {
  /// See also [FeedConfigFormController].
  const FeedConfigFormControllerFamily();

  /// See also [FeedConfigFormController].
  FeedConfigFormControllerProvider call(
    Feed feed,
  ) {
    return FeedConfigFormControllerProvider(
      feed,
    );
  }

  @override
  FeedConfigFormControllerProvider getProviderOverride(
    covariant FeedConfigFormControllerProvider provider,
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
  String? get name => r'feedConfigFormControllerProvider';
}

/// See also [FeedConfigFormController].
class FeedConfigFormControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FeedConfigFormController,
        Config> {
  /// See also [FeedConfigFormController].
  FeedConfigFormControllerProvider(
    this.feed,
  ) : super.internal(
          () => FeedConfigFormController()..feed = feed,
          from: feedConfigFormControllerProvider,
          name: r'feedConfigFormControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$feedConfigFormControllerHash,
          dependencies: FeedConfigFormControllerFamily._dependencies,
          allTransitiveDependencies:
              FeedConfigFormControllerFamily._allTransitiveDependencies,
        );

  final Feed feed;

  @override
  bool operator ==(Object other) {
    return other is FeedConfigFormControllerProvider && other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<Config> runNotifierBuild(
    covariant FeedConfigFormController notifier,
  ) {
    return notifier.build(
      feed,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
