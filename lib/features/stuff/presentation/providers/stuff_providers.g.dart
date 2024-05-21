// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stuff_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$remoteStuffDataSourceHash() =>
    r'28a5379431d1a9140e155a05a2e899248f676adc';

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
String _$createStuffUseCaseHash() =>
    r'2a5d8589d558d051523d6f39d50f306169f6d832';

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

/// See also [createStuffUseCase].
@ProviderFor(createStuffUseCase)
const createStuffUseCaseProvider = CreateStuffUseCaseFamily();

/// See also [createStuffUseCase].
class CreateStuffUseCaseFamily extends Family<AsyncValue<List<(int, String)>>> {
  /// See also [createStuffUseCase].
  const CreateStuffUseCaseFamily();

  /// See also [createStuffUseCase].
  CreateStuffUseCaseProvider call({
    required String title,
    required StorageItem? storage,
    required XFile file,
    int? count = 1,
  }) {
    return CreateStuffUseCaseProvider(
      title: title,
      storage: storage,
      file: file,
      count: count,
    );
  }

  @override
  CreateStuffUseCaseProvider getProviderOverride(
    covariant CreateStuffUseCaseProvider provider,
  ) {
    return call(
      title: provider.title,
      storage: provider.storage,
      file: provider.file,
      count: provider.count,
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
  String? get name => r'createStuffUseCaseProvider';
}

/// See also [createStuffUseCase].
class CreateStuffUseCaseProvider
    extends AutoDisposeFutureProvider<List<(int, String)>> {
  /// See also [createStuffUseCase].
  CreateStuffUseCaseProvider({
    required String title,
    required StorageItem? storage,
    required XFile file,
    int? count = 1,
  }) : this._internal(
          (ref) => createStuffUseCase(
            ref as CreateStuffUseCaseRef,
            title: title,
            storage: storage,
            file: file,
            count: count,
          ),
          from: createStuffUseCaseProvider,
          name: r'createStuffUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createStuffUseCaseHash,
          dependencies: CreateStuffUseCaseFamily._dependencies,
          allTransitiveDependencies:
              CreateStuffUseCaseFamily._allTransitiveDependencies,
          title: title,
          storage: storage,
          file: file,
          count: count,
        );

  CreateStuffUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.title,
    required this.storage,
    required this.file,
    required this.count,
  }) : super.internal();

  final String title;
  final StorageItem? storage;
  final XFile file;
  final int? count;

  @override
  Override overrideWith(
    FutureOr<List<(int, String)>> Function(CreateStuffUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateStuffUseCaseProvider._internal(
        (ref) => create(ref as CreateStuffUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        title: title,
        storage: storage,
        file: file,
        count: count,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<(int, String)>> createElement() {
    return _CreateStuffUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateStuffUseCaseProvider &&
        other.title == title &&
        other.storage == storage &&
        other.file == file &&
        other.count == count;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);
    hash = _SystemHash.combine(hash, storage.hashCode);
    hash = _SystemHash.combine(hash, file.hashCode);
    hash = _SystemHash.combine(hash, count.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateStuffUseCaseRef
    on AutoDisposeFutureProviderRef<List<(int, String)>> {
  /// The parameter `title` of this provider.
  String get title;

  /// The parameter `storage` of this provider.
  StorageItem? get storage;

  /// The parameter `file` of this provider.
  XFile get file;

  /// The parameter `count` of this provider.
  int? get count;
}

class _CreateStuffUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<List<(int, String)>>
    with CreateStuffUseCaseRef {
  _CreateStuffUseCaseProviderElement(super.provider);

  @override
  String get title => (origin as CreateStuffUseCaseProvider).title;
  @override
  StorageItem? get storage => (origin as CreateStuffUseCaseProvider).storage;
  @override
  XFile get file => (origin as CreateStuffUseCaseProvider).file;
  @override
  int? get count => (origin as CreateStuffUseCaseProvider).count;
}

String _$getStuffByIdHash() => r'221fb9978079cbe0338d4f3d0f798073e39f484c';

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
