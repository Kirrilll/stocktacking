// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'physical_identifier_page_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$physicalIdentifierPageNotifierHash() =>
    r'755cc8f401ae81c6fe37a59c27dcf7e20281d95c';

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

abstract class _$PhysicalIdentifierPageNotifier
    extends BuildlessAutoDisposeNotifier<PhysicalIdentifierPageState> {
  late final int stuffId;

  PhysicalIdentifierPageState build(
    int stuffId,
  );
}

/// See also [PhysicalIdentifierPageNotifier].
@ProviderFor(PhysicalIdentifierPageNotifier)
const physicalIdentifierPageNotifierProvider =
    PhysicalIdentifierPageNotifierFamily();

/// See also [PhysicalIdentifierPageNotifier].
class PhysicalIdentifierPageNotifierFamily
    extends Family<PhysicalIdentifierPageState> {
  /// See also [PhysicalIdentifierPageNotifier].
  const PhysicalIdentifierPageNotifierFamily();

  /// See also [PhysicalIdentifierPageNotifier].
  PhysicalIdentifierPageNotifierProvider call(
    int stuffId,
  ) {
    return PhysicalIdentifierPageNotifierProvider(
      stuffId,
    );
  }

  @override
  PhysicalIdentifierPageNotifierProvider getProviderOverride(
    covariant PhysicalIdentifierPageNotifierProvider provider,
  ) {
    return call(
      provider.stuffId,
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
  String? get name => r'physicalIdentifierPageNotifierProvider';
}

/// See also [PhysicalIdentifierPageNotifier].
class PhysicalIdentifierPageNotifierProvider
    extends AutoDisposeNotifierProviderImpl<PhysicalIdentifierPageNotifier,
        PhysicalIdentifierPageState> {
  /// See also [PhysicalIdentifierPageNotifier].
  PhysicalIdentifierPageNotifierProvider(
    int stuffId,
  ) : this._internal(
          () => PhysicalIdentifierPageNotifier()..stuffId = stuffId,
          from: physicalIdentifierPageNotifierProvider,
          name: r'physicalIdentifierPageNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$physicalIdentifierPageNotifierHash,
          dependencies: PhysicalIdentifierPageNotifierFamily._dependencies,
          allTransitiveDependencies:
              PhysicalIdentifierPageNotifierFamily._allTransitiveDependencies,
          stuffId: stuffId,
        );

  PhysicalIdentifierPageNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.stuffId,
  }) : super.internal();

  final int stuffId;

  @override
  PhysicalIdentifierPageState runNotifierBuild(
    covariant PhysicalIdentifierPageNotifier notifier,
  ) {
    return notifier.build(
      stuffId,
    );
  }

  @override
  Override overrideWith(PhysicalIdentifierPageNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PhysicalIdentifierPageNotifierProvider._internal(
        () => create()..stuffId = stuffId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        stuffId: stuffId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PhysicalIdentifierPageNotifier,
      PhysicalIdentifierPageState> createElement() {
    return _PhysicalIdentifierPageNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PhysicalIdentifierPageNotifierProvider &&
        other.stuffId == stuffId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stuffId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PhysicalIdentifierPageNotifierRef
    on AutoDisposeNotifierProviderRef<PhysicalIdentifierPageState> {
  /// The parameter `stuffId` of this provider.
  int get stuffId;
}

class _PhysicalIdentifierPageNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<PhysicalIdentifierPageNotifier,
        PhysicalIdentifierPageState> with PhysicalIdentifierPageNotifierRef {
  _PhysicalIdentifierPageNotifierProviderElement(super.provider);

  @override
  int get stuffId => (origin as PhysicalIdentifierPageNotifierProvider).stuffId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
