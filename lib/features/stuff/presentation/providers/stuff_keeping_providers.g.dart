// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stuff_keeping_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$remoteStuffKeepingReportDataSourceHash() =>
    r'4635797a61fa7d41db91e594a921157e0f92262c';

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
String _$useTakeStuffUseCaseHash() =>
    r'0aac0d235fad87c6f254acca4fb5860c389f2b54';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
