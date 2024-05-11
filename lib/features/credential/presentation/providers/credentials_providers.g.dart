// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$remoteCredentialDataSourceHash() =>
    r'6af89ec6934fd22cefd3f87938b842f5c8c5963e';

/// See also [remoteCredentialDataSource].
@ProviderFor(remoteCredentialDataSource)
final remoteCredentialDataSourceProvider =
    AutoDisposeProvider<RemoteCredentialDataSource>.internal(
  remoteCredentialDataSource,
  name: r'remoteCredentialDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$remoteCredentialDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RemoteCredentialDataSourceRef
    = AutoDisposeProviderRef<RemoteCredentialDataSource>;
String _$credentialRepositoryHash() =>
    r'3fab946db0b81f09a90834dc3ff3c270a32d96e9';

/// See also [credentialRepository].
@ProviderFor(credentialRepository)
final credentialRepositoryProvider =
    AutoDisposeProvider<CredentialRepository>.internal(
  credentialRepository,
  name: r'credentialRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$credentialRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CredentialRepositoryRef = AutoDisposeProviderRef<CredentialRepository>;
String _$useLoginUseCaseHash() => r'5f2d8fa4c2d024997220471d5e101f20488148c0';

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

/// See also [useLoginUseCase].
@ProviderFor(useLoginUseCase)
const useLoginUseCaseProvider = UseLoginUseCaseFamily();

/// See also [useLoginUseCase].
class UseLoginUseCaseFamily extends Family<AsyncValue<Credential>> {
  /// See also [useLoginUseCase].
  const UseLoginUseCaseFamily();

  /// See also [useLoginUseCase].
  UseLoginUseCaseProvider call(
    String phone,
  ) {
    return UseLoginUseCaseProvider(
      phone,
    );
  }

  @override
  UseLoginUseCaseProvider getProviderOverride(
    covariant UseLoginUseCaseProvider provider,
  ) {
    return call(
      provider.phone,
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
  String? get name => r'useLoginUseCaseProvider';
}

/// See also [useLoginUseCase].
class UseLoginUseCaseProvider extends AutoDisposeFutureProvider<Credential> {
  /// See also [useLoginUseCase].
  UseLoginUseCaseProvider(
    String phone,
  ) : this._internal(
          (ref) => useLoginUseCase(
            ref as UseLoginUseCaseRef,
            phone,
          ),
          from: useLoginUseCaseProvider,
          name: r'useLoginUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$useLoginUseCaseHash,
          dependencies: UseLoginUseCaseFamily._dependencies,
          allTransitiveDependencies:
              UseLoginUseCaseFamily._allTransitiveDependencies,
          phone: phone,
        );

  UseLoginUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.phone,
  }) : super.internal();

  final String phone;

  @override
  Override overrideWith(
    FutureOr<Credential> Function(UseLoginUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UseLoginUseCaseProvider._internal(
        (ref) => create(ref as UseLoginUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        phone: phone,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Credential> createElement() {
    return _UseLoginUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UseLoginUseCaseProvider && other.phone == phone;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, phone.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UseLoginUseCaseRef on AutoDisposeFutureProviderRef<Credential> {
  /// The parameter `phone` of this provider.
  String get phone;
}

class _UseLoginUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<Credential>
    with UseLoginUseCaseRef {
  _UseLoginUseCaseProviderElement(super.provider);

  @override
  String get phone => (origin as UseLoginUseCaseProvider).phone;
}

String _$useLogoutUseCaseHash() => r'ee226b4c2df646991fd4531fa9f48e1dc622e5b4';

/// See also [useLogoutUseCase].
@ProviderFor(useLogoutUseCase)
final useLogoutUseCaseProvider = AutoDisposeFutureProvider<void>.internal(
  useLogoutUseCase,
  name: r'useLogoutUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$useLogoutUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UseLogoutUseCaseRef = AutoDisposeFutureProviderRef<void>;
String _$isAuthorisedHash() => r'd0f2f2623723f7370a9896bbdb523176a73eb9b5';

/// See also [isAuthorised].
@ProviderFor(isAuthorised)
final isAuthorisedProvider = Provider<bool>.internal(
  isAuthorised,
  name: r'isAuthorisedProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isAuthorisedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsAuthorisedRef = ProviderRef<bool>;
String _$isStockKeeperHash() => r'dcd3af89d13ff36493cac3023810a4e27def83cd';

/// See also [isStockKeeper].
@ProviderFor(isStockKeeper)
final isStockKeeperProvider = Provider<bool>.internal(
  isStockKeeper,
  name: r'isStockKeeperProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isStockKeeperHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsStockKeeperRef = ProviderRef<bool>;
String _$credentialRouteGuardHash() =>
    r'46b32c653edfe605c9664000c295044e94ac9cb9';

/// See also [credentialRouteGuard].
@ProviderFor(credentialRouteGuard)
final credentialRouteGuardProvider = Provider<CredentialRouteGuard>.internal(
  credentialRouteGuard,
  name: r'credentialRouteGuardProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$credentialRouteGuardHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CredentialRouteGuardRef = ProviderRef<CredentialRouteGuard>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
