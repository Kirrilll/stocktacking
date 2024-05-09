// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stuff_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$remoteStuffDataSourceHash() =>
    r'7442334193e88dc540dae22f6900ac5c07123031';

/// See also [remoteStuffDataSource].
@ProviderFor(remoteStuffDataSource)
final remoteStuffDataSourceProvider =
    AutoDisposeProvider<RemoteStuffDataSource>.internal(
  remoteStuffDataSource,
  name: r'remoteStuffDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$remoteStuffDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RemoteStuffDataSourceRef
    = AutoDisposeProviderRef<RemoteStuffDataSource>;
String _$stuffRepositoryHash() => r'c5c101924567c50b8df1f7f3d28f6f88feaca3af';

/// See also [stuffRepository].
@ProviderFor(stuffRepository)
final stuffRepositoryProvider = AutoDisposeProvider<StuffRepository>.internal(
  stuffRepository,
  name: r'stuffRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$stuffRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StuffRepositoryRef = AutoDisposeProviderRef<StuffRepository>;
String _$getStuffByIdHash() => r'221fb9978079cbe0338d4f3d0f798073e39f484c';

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

/// See also [getStuffById].
@ProviderFor(getStuffById)
const getStuffByIdProvider = GetStuffByIdFamily();

/// See also [getStuffById].
class GetStuffByIdFamily extends Family<AsyncValue<Stuff>> {
  /// See also [getStuffById].
  const GetStuffByIdFamily();

  /// See also [getStuffById].
  GetStuffByIdProvider call(
    int stuffId,
  ) {
    return GetStuffByIdProvider(
      stuffId,
    );
  }

  @override
  GetStuffByIdProvider getProviderOverride(
    covariant GetStuffByIdProvider provider,
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
  String? get name => r'getStuffByIdProvider';
}

/// See also [getStuffById].
class GetStuffByIdProvider extends AutoDisposeFutureProvider<Stuff> {
  /// See also [getStuffById].
  GetStuffByIdProvider(
    int stuffId,
  ) : this._internal(
          (ref) => getStuffById(
            ref as GetStuffByIdRef,
            stuffId,
          ),
          from: getStuffByIdProvider,
          name: r'getStuffByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getStuffByIdHash,
          dependencies: GetStuffByIdFamily._dependencies,
          allTransitiveDependencies:
              GetStuffByIdFamily._allTransitiveDependencies,
          stuffId: stuffId,
        );

  GetStuffByIdProvider._internal(
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
  Override overrideWith(
    FutureOr<Stuff> Function(GetStuffByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetStuffByIdProvider._internal(
        (ref) => create(ref as GetStuffByIdRef),
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
  AutoDisposeFutureProviderElement<Stuff> createElement() {
    return _GetStuffByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetStuffByIdProvider && other.stuffId == stuffId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stuffId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetStuffByIdRef on AutoDisposeFutureProviderRef<Stuff> {
  /// The parameter `stuffId` of this provider.
  int get stuffId;
}

class _GetStuffByIdProviderElement
    extends AutoDisposeFutureProviderElement<Stuff> with GetStuffByIdRef {
  _GetStuffByIdProviderElement(super.provider);

  @override
  int get stuffId => (origin as GetStuffByIdProvider).stuffId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
