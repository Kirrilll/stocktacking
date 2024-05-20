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
