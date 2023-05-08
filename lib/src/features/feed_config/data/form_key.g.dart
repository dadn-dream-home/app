// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_key.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$formKeyHash() => r'6c7931c784d861983135b89b5101060c0f7da7d3';

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

abstract class _$FormKey
    extends BuildlessAutoDisposeNotifier<GlobalKey<FormBuilderState>> {
  late final Feed feed;

  GlobalKey<FormBuilderState> build(
    Feed feed,
  );
}

/// See also [FormKey].
@ProviderFor(FormKey)
const formKeyProvider = FormKeyFamily();

/// See also [FormKey].
class FormKeyFamily extends Family<GlobalKey<FormBuilderState>> {
  /// See also [FormKey].
  const FormKeyFamily();

  /// See also [FormKey].
  FormKeyProvider call(
    Feed feed,
  ) {
    return FormKeyProvider(
      feed,
    );
  }

  @override
  FormKeyProvider getProviderOverride(
    covariant FormKeyProvider provider,
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
  String? get name => r'formKeyProvider';
}

/// See also [FormKey].
class FormKeyProvider extends AutoDisposeNotifierProviderImpl<FormKey,
    GlobalKey<FormBuilderState>> {
  /// See also [FormKey].
  FormKeyProvider(
    this.feed,
  ) : super.internal(
          () => FormKey()..feed = feed,
          from: formKeyProvider,
          name: r'formKeyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$formKeyHash,
          dependencies: FormKeyFamily._dependencies,
          allTransitiveDependencies: FormKeyFamily._allTransitiveDependencies,
        );

  final Feed feed;

  @override
  bool operator ==(Object other) {
    return other is FormKeyProvider && other.feed == feed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feed.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  GlobalKey<FormBuilderState> runNotifierBuild(
    covariant FormKey notifier,
  ) {
    return notifier.build(
      feed,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
