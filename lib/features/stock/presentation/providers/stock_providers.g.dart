// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stockRemoteDataSourceHash() =>
    r'ad414b06d8ad025fe1d0ed3c470774ec912e00aa';

/// See also [stockRemoteDataSource].
@ProviderFor(stockRemoteDataSource)
final stockRemoteDataSourceProvider = Provider<StockRemoteDataSource>.internal(
  stockRemoteDataSource,
  name: r'stockRemoteDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$stockRemoteDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StockRemoteDataSourceRef = ProviderRef<StockRemoteDataSource>;
String _$stockRepositoryHash() => r'98123c3fa0362176930c390114bb8bbf77a4a82c';

/// See also [stockRepository].
@ProviderFor(stockRepository)
final stockRepositoryProvider = AutoDisposeProvider<StockRepository>.internal(
  stockRepository,
  name: r'stockRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$stockRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StockRepositoryRef = AutoDisposeProviderRef<StockRepository>;
String _$searchStoragesHash() => r'1a99619db3651717e384a798575bb954975cdf05';

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

/// See also [searchStorages].
@ProviderFor(searchStorages)
const searchStoragesProvider = SearchStoragesFamily();

/// See also [searchStorages].
class SearchStoragesFamily extends Family<AsyncValue<List<StorageItem>>> {
  /// See also [searchStorages].
  const SearchStoragesFamily();

  /// See also [searchStorages].
  SearchStoragesProvider call({
    required String search,
  }) {
    return SearchStoragesProvider(
      search: search,
    );
  }

  @override
  SearchStoragesProvider getProviderOverride(
    covariant SearchStoragesProvider provider,
  ) {
    return call(
      search: provider.search,
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
  String? get name => r'searchStoragesProvider';
}

/// See also [searchStorages].
class SearchStoragesProvider
    extends AutoDisposeFutureProvider<List<StorageItem>> {
  /// See also [searchStorages].
  SearchStoragesProvider({
    required String search,
  }) : this._internal(
          (ref) => searchStorages(
            ref as SearchStoragesRef,
            search: search,
          ),
          from: searchStoragesProvider,
          name: r'searchStoragesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchStoragesHash,
          dependencies: SearchStoragesFamily._dependencies,
          allTransitiveDependencies:
              SearchStoragesFamily._allTransitiveDependencies,
          search: search,
        );

  SearchStoragesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.search,
  }) : super.internal();

  final String search;

  @override
  Override overrideWith(
    FutureOr<List<StorageItem>> Function(SearchStoragesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchStoragesProvider._internal(
        (ref) => create(ref as SearchStoragesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        search: search,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<StorageItem>> createElement() {
    return _SearchStoragesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchStoragesProvider && other.search == search;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchStoragesRef on AutoDisposeFutureProviderRef<List<StorageItem>> {
  /// The parameter `search` of this provider.
  String get search;
}

class _SearchStoragesProviderElement
    extends AutoDisposeFutureProviderElement<List<StorageItem>>
    with SearchStoragesRef {
  _SearchStoragesProviderElement(super.provider);

  @override
  String get search => (origin as SearchStoragesProvider).search;
}

String _$getStoragesHash() => r'f991c790454669ac90536105f54a9e82c422132c';

/// See also [getStorages].
@ProviderFor(getStorages)
const getStoragesProvider = GetStoragesFamily();

/// See also [getStorages].
class GetStoragesFamily extends Family<AsyncValue<StoragesAndStuffState>> {
  /// See also [getStorages].
  const GetStoragesFamily();

  /// See also [getStorages].
  GetStoragesProvider call({
    String? search,
    StorageItem? storageItem,
  }) {
    return GetStoragesProvider(
      search: search,
      storageItem: storageItem,
    );
  }

  @override
  GetStoragesProvider getProviderOverride(
    covariant GetStoragesProvider provider,
  ) {
    return call(
      search: provider.search,
      storageItem: provider.storageItem,
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
  String? get name => r'getStoragesProvider';
}

/// See also [getStorages].
class GetStoragesProvider
    extends AutoDisposeFutureProvider<StoragesAndStuffState> {
  /// See also [getStorages].
  GetStoragesProvider({
    String? search,
    StorageItem? storageItem,
  }) : this._internal(
          (ref) => getStorages(
            ref as GetStoragesRef,
            search: search,
            storageItem: storageItem,
          ),
          from: getStoragesProvider,
          name: r'getStoragesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getStoragesHash,
          dependencies: GetStoragesFamily._dependencies,
          allTransitiveDependencies:
              GetStoragesFamily._allTransitiveDependencies,
          search: search,
          storageItem: storageItem,
        );

  GetStoragesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.search,
    required this.storageItem,
  }) : super.internal();

  final String? search;
  final StorageItem? storageItem;

  @override
  Override overrideWith(
    FutureOr<StoragesAndStuffState> Function(GetStoragesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetStoragesProvider._internal(
        (ref) => create(ref as GetStoragesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        search: search,
        storageItem: storageItem,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<StoragesAndStuffState> createElement() {
    return _GetStoragesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetStoragesProvider &&
        other.search == search &&
        other.storageItem == storageItem;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);
    hash = _SystemHash.combine(hash, storageItem.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetStoragesRef on AutoDisposeFutureProviderRef<StoragesAndStuffState> {
  /// The parameter `search` of this provider.
  String? get search;

  /// The parameter `storageItem` of this provider.
  StorageItem? get storageItem;
}

class _GetStoragesProviderElement
    extends AutoDisposeFutureProviderElement<StoragesAndStuffState>
    with GetStoragesRef {
  _GetStoragesProviderElement(super.provider);

  @override
  String? get search => (origin as GetStoragesProvider).search;
  @override
  StorageItem? get storageItem => (origin as GetStoragesProvider).storageItem;
}

String _$getStocksHash() => r'474e6063090f76f26a605ad7ba0ec11791a30174';

/// See also [getStocks].
@ProviderFor(getStocks)
final getStocksProvider = AutoDisposeFutureProvider<List<Stock>>.internal(
  getStocks,
  name: r'getStocksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getStocksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetStocksRef = AutoDisposeFutureProviderRef<List<Stock>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
