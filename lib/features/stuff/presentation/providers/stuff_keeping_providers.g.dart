// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stuff_keeping_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$remoteStuffKeepingReportDataSourceHash() =>
    r'676cc171ac011fe00baf88ee45fb6896ec1f25a7';

/// See also [remoteStuffKeepingReportDataSource].
@ProviderFor(remoteStuffKeepingReportDataSource)
final remoteStuffKeepingReportDataSourceProvider =
    AutoDisposeProvider<RemoteStuffKeepingReportDataSource>.internal(
  remoteStuffKeepingReportDataSource,
  name: r'remoteStuffKeepingReportDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$remoteStuffKeepingReportDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RemoteStuffKeepingReportDataSourceRef
    = AutoDisposeProviderRef<RemoteStuffKeepingReportDataSource>;
String _$stuffKeepingReportRepositoryHash() =>
    r'e0733e2abc4e5eb36ff781f2e5b723dddf82213d';

/// See also [stuffKeepingReportRepository].
@ProviderFor(stuffKeepingReportRepository)
final stuffKeepingReportRepositoryProvider =
    AutoDisposeProvider<StuffKeepingReportRepository>.internal(
  stuffKeepingReportRepository,
  name: r'stuffKeepingReportRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$stuffKeepingReportRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StuffKeepingReportRepositoryRef
    = AutoDisposeProviderRef<StuffKeepingReportRepository>;
String _$getStuffReportsHash() => r'c4caf08184fc1278a25057ad626d32e2dd736856';

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

/// See also [getStuffReports].
@ProviderFor(getStuffReports)
const getStuffReportsProvider = GetStuffReportsFamily();

/// See also [getStuffReports].
class GetStuffReportsFamily
    extends Family<AsyncValue<List<StuffKeepingReport>>> {
  /// See also [getStuffReports].
  const GetStuffReportsFamily();

  /// See also [getStuffReports].
  GetStuffReportsProvider call(
    int stuffId,
  ) {
    return GetStuffReportsProvider(
      stuffId,
    );
  }

  @override
  GetStuffReportsProvider getProviderOverride(
    covariant GetStuffReportsProvider provider,
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
  String? get name => r'getStuffReportsProvider';
}

/// See also [getStuffReports].
class GetStuffReportsProvider
    extends AutoDisposeFutureProvider<List<StuffKeepingReport>> {
  /// See also [getStuffReports].
  GetStuffReportsProvider(
    int stuffId,
  ) : this._internal(
          (ref) => getStuffReports(
            ref as GetStuffReportsRef,
            stuffId,
          ),
          from: getStuffReportsProvider,
          name: r'getStuffReportsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getStuffReportsHash,
          dependencies: GetStuffReportsFamily._dependencies,
          allTransitiveDependencies:
              GetStuffReportsFamily._allTransitiveDependencies,
          stuffId: stuffId,
        );

  GetStuffReportsProvider._internal(
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
    FutureOr<List<StuffKeepingReport>> Function(GetStuffReportsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetStuffReportsProvider._internal(
        (ref) => create(ref as GetStuffReportsRef),
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
  AutoDisposeFutureProviderElement<List<StuffKeepingReport>> createElement() {
    return _GetStuffReportsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetStuffReportsProvider && other.stuffId == stuffId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stuffId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetStuffReportsRef
    on AutoDisposeFutureProviderRef<List<StuffKeepingReport>> {
  /// The parameter `stuffId` of this provider.
  int get stuffId;
}

class _GetStuffReportsProviderElement
    extends AutoDisposeFutureProviderElement<List<StuffKeepingReport>>
    with GetStuffReportsRef {
  _GetStuffReportsProviderElement(super.provider);

  @override
  int get stuffId => (origin as GetStuffReportsProvider).stuffId;
}

String _$useTakeStuffUseCaseHash() =>
    r'6b7054bf0efc954e8e2ceb6c034707b01d457d32';

/// See also [useTakeStuffUseCase].
@ProviderFor(useTakeStuffUseCase)
const useTakeStuffUseCaseProvider = UseTakeStuffUseCaseFamily();

/// See also [useTakeStuffUseCase].
class UseTakeStuffUseCaseFamily extends Family<AsyncValue<void>> {
  /// See also [useTakeStuffUseCase].
  const UseTakeStuffUseCaseFamily();

  /// See also [useTakeStuffUseCase].
  UseTakeStuffUseCaseProvider call({
    required int stuffId,
    bool isBroken = false,
    String? comment,
  }) {
    return UseTakeStuffUseCaseProvider(
      stuffId: stuffId,
      isBroken: isBroken,
      comment: comment,
    );
  }

  @override
  UseTakeStuffUseCaseProvider getProviderOverride(
    covariant UseTakeStuffUseCaseProvider provider,
  ) {
    return call(
      stuffId: provider.stuffId,
      isBroken: provider.isBroken,
      comment: provider.comment,
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
  String? get name => r'useTakeStuffUseCaseProvider';
}

/// See also [useTakeStuffUseCase].
class UseTakeStuffUseCaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [useTakeStuffUseCase].
  UseTakeStuffUseCaseProvider({
    required int stuffId,
    bool isBroken = false,
    String? comment,
  }) : this._internal(
          (ref) => useTakeStuffUseCase(
            ref as UseTakeStuffUseCaseRef,
            stuffId: stuffId,
            isBroken: isBroken,
            comment: comment,
          ),
          from: useTakeStuffUseCaseProvider,
          name: r'useTakeStuffUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$useTakeStuffUseCaseHash,
          dependencies: UseTakeStuffUseCaseFamily._dependencies,
          allTransitiveDependencies:
              UseTakeStuffUseCaseFamily._allTransitiveDependencies,
          stuffId: stuffId,
          isBroken: isBroken,
          comment: comment,
        );

  UseTakeStuffUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.stuffId,
    required this.isBroken,
    required this.comment,
  }) : super.internal();

  final int stuffId;
  final bool isBroken;
  final String? comment;

  @override
  Override overrideWith(
    FutureOr<void> Function(UseTakeStuffUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UseTakeStuffUseCaseProvider._internal(
        (ref) => create(ref as UseTakeStuffUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        stuffId: stuffId,
        isBroken: isBroken,
        comment: comment,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UseTakeStuffUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UseTakeStuffUseCaseProvider &&
        other.stuffId == stuffId &&
        other.isBroken == isBroken &&
        other.comment == comment;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stuffId.hashCode);
    hash = _SystemHash.combine(hash, isBroken.hashCode);
    hash = _SystemHash.combine(hash, comment.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UseTakeStuffUseCaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `stuffId` of this provider.
  int get stuffId;

  /// The parameter `isBroken` of this provider.
  bool get isBroken;

  /// The parameter `comment` of this provider.
  String? get comment;
}

class _UseTakeStuffUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with UseTakeStuffUseCaseRef {
  _UseTakeStuffUseCaseProviderElement(super.provider);

  @override
  int get stuffId => (origin as UseTakeStuffUseCaseProvider).stuffId;
  @override
  bool get isBroken => (origin as UseTakeStuffUseCaseProvider).isBroken;
  @override
  String? get comment => (origin as UseTakeStuffUseCaseProvider).comment;
}

String _$useRetakeStuffUseCaseHash() =>
    r'0c8ae28867f71f4c6390bcb6d9120434ccdc1897';

/// See also [useRetakeStuffUseCase].
@ProviderFor(useRetakeStuffUseCase)
const useRetakeStuffUseCaseProvider = UseRetakeStuffUseCaseFamily();

/// See also [useRetakeStuffUseCase].
class UseRetakeStuffUseCaseFamily extends Family<AsyncValue<void>> {
  /// See also [useRetakeStuffUseCase].
  const UseRetakeStuffUseCaseFamily();

  /// See also [useRetakeStuffUseCase].
  UseRetakeStuffUseCaseProvider call({
    required int stuffId,
    required int reportId,
    required int prevUserId,
  }) {
    return UseRetakeStuffUseCaseProvider(
      stuffId: stuffId,
      reportId: reportId,
      prevUserId: prevUserId,
    );
  }

  @override
  UseRetakeStuffUseCaseProvider getProviderOverride(
    covariant UseRetakeStuffUseCaseProvider provider,
  ) {
    return call(
      stuffId: provider.stuffId,
      reportId: provider.reportId,
      prevUserId: provider.prevUserId,
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
  String? get name => r'useRetakeStuffUseCaseProvider';
}

/// See also [useRetakeStuffUseCase].
class UseRetakeStuffUseCaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [useRetakeStuffUseCase].
  UseRetakeStuffUseCaseProvider({
    required int stuffId,
    required int reportId,
    required int prevUserId,
  }) : this._internal(
          (ref) => useRetakeStuffUseCase(
            ref as UseRetakeStuffUseCaseRef,
            stuffId: stuffId,
            reportId: reportId,
            prevUserId: prevUserId,
          ),
          from: useRetakeStuffUseCaseProvider,
          name: r'useRetakeStuffUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$useRetakeStuffUseCaseHash,
          dependencies: UseRetakeStuffUseCaseFamily._dependencies,
          allTransitiveDependencies:
              UseRetakeStuffUseCaseFamily._allTransitiveDependencies,
          stuffId: stuffId,
          reportId: reportId,
          prevUserId: prevUserId,
        );

  UseRetakeStuffUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.stuffId,
    required this.reportId,
    required this.prevUserId,
  }) : super.internal();

  final int stuffId;
  final int reportId;
  final int prevUserId;

  @override
  Override overrideWith(
    FutureOr<void> Function(UseRetakeStuffUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UseRetakeStuffUseCaseProvider._internal(
        (ref) => create(ref as UseRetakeStuffUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        stuffId: stuffId,
        reportId: reportId,
        prevUserId: prevUserId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UseRetakeStuffUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UseRetakeStuffUseCaseProvider &&
        other.stuffId == stuffId &&
        other.reportId == reportId &&
        other.prevUserId == prevUserId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stuffId.hashCode);
    hash = _SystemHash.combine(hash, reportId.hashCode);
    hash = _SystemHash.combine(hash, prevUserId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UseRetakeStuffUseCaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `stuffId` of this provider.
  int get stuffId;

  /// The parameter `reportId` of this provider.
  int get reportId;

  /// The parameter `prevUserId` of this provider.
  int get prevUserId;
}

class _UseRetakeStuffUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with UseRetakeStuffUseCaseRef {
  _UseRetakeStuffUseCaseProviderElement(super.provider);

  @override
  int get stuffId => (origin as UseRetakeStuffUseCaseProvider).stuffId;
  @override
  int get reportId => (origin as UseRetakeStuffUseCaseProvider).reportId;
  @override
  int get prevUserId => (origin as UseRetakeStuffUseCaseProvider).prevUserId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
