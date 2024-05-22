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
    r'f8a54ae8e5412d5f11715160198118cec036a5d5';

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

String _$getUnfinishedReportHash() =>
    r'62f69bb4411afe71b17a2134d3f66296c9249577';

/// See also [getUnfinishedReport].
@ProviderFor(getUnfinishedReport)
const getUnfinishedReportProvider = GetUnfinishedReportFamily();

/// See also [getUnfinishedReport].
class GetUnfinishedReportFamily
    extends Family<AsyncValue<StuffKeepingReport?>> {
  /// See also [getUnfinishedReport].
  const GetUnfinishedReportFamily();

  /// See also [getUnfinishedReport].
  GetUnfinishedReportProvider call(
    int stuffId,
  ) {
    return GetUnfinishedReportProvider(
      stuffId,
    );
  }

  @override
  GetUnfinishedReportProvider getProviderOverride(
    covariant GetUnfinishedReportProvider provider,
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
  String? get name => r'getUnfinishedReportProvider';
}

/// See also [getUnfinishedReport].
class GetUnfinishedReportProvider
    extends AutoDisposeFutureProvider<StuffKeepingReport?> {
  /// See also [getUnfinishedReport].
  GetUnfinishedReportProvider(
    int stuffId,
  ) : this._internal(
          (ref) => getUnfinishedReport(
            ref as GetUnfinishedReportRef,
            stuffId,
          ),
          from: getUnfinishedReportProvider,
          name: r'getUnfinishedReportProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUnfinishedReportHash,
          dependencies: GetUnfinishedReportFamily._dependencies,
          allTransitiveDependencies:
              GetUnfinishedReportFamily._allTransitiveDependencies,
          stuffId: stuffId,
        );

  GetUnfinishedReportProvider._internal(
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
    FutureOr<StuffKeepingReport?> Function(GetUnfinishedReportRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUnfinishedReportProvider._internal(
        (ref) => create(ref as GetUnfinishedReportRef),
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
  AutoDisposeFutureProviderElement<StuffKeepingReport?> createElement() {
    return _GetUnfinishedReportProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUnfinishedReportProvider && other.stuffId == stuffId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stuffId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetUnfinishedReportRef
    on AutoDisposeFutureProviderRef<StuffKeepingReport?> {
  /// The parameter `stuffId` of this provider.
  int get stuffId;
}

class _GetUnfinishedReportProviderElement
    extends AutoDisposeFutureProviderElement<StuffKeepingReport?>
    with GetUnfinishedReportRef {
  _GetUnfinishedReportProviderElement(super.provider);

  @override
  int get stuffId => (origin as GetUnfinishedReportProvider).stuffId;
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

String _$usePutStuffUseCaseHash() =>
    r'16fd7b99508cc1df2770aa5c2c37de392c20e4b9';

/// See also [usePutStuffUseCase].
@ProviderFor(usePutStuffUseCase)
const usePutStuffUseCaseProvider = UsePutStuffUseCaseFamily();

/// See also [usePutStuffUseCase].
class UsePutStuffUseCaseFamily extends Family<AsyncValue<void>> {
  /// See also [usePutStuffUseCase].
  const UsePutStuffUseCaseFamily();

  /// See also [usePutStuffUseCase].
  UsePutStuffUseCaseProvider call({
    required StorageItem item,
    required int reportId,
    bool isBroken = false,
    String? comment,
  }) {
    return UsePutStuffUseCaseProvider(
      item: item,
      reportId: reportId,
      isBroken: isBroken,
      comment: comment,
    );
  }

  @override
  UsePutStuffUseCaseProvider getProviderOverride(
    covariant UsePutStuffUseCaseProvider provider,
  ) {
    return call(
      item: provider.item,
      reportId: provider.reportId,
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
  String? get name => r'usePutStuffUseCaseProvider';
}

/// See also [usePutStuffUseCase].
class UsePutStuffUseCaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [usePutStuffUseCase].
  UsePutStuffUseCaseProvider({
    required StorageItem item,
    required int reportId,
    bool isBroken = false,
    String? comment,
  }) : this._internal(
          (ref) => usePutStuffUseCase(
            ref as UsePutStuffUseCaseRef,
            item: item,
            reportId: reportId,
            isBroken: isBroken,
            comment: comment,
          ),
          from: usePutStuffUseCaseProvider,
          name: r'usePutStuffUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$usePutStuffUseCaseHash,
          dependencies: UsePutStuffUseCaseFamily._dependencies,
          allTransitiveDependencies:
              UsePutStuffUseCaseFamily._allTransitiveDependencies,
          item: item,
          reportId: reportId,
          isBroken: isBroken,
          comment: comment,
        );

  UsePutStuffUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.item,
    required this.reportId,
    required this.isBroken,
    required this.comment,
  }) : super.internal();

  final StorageItem item;
  final int reportId;
  final bool isBroken;
  final String? comment;

  @override
  Override overrideWith(
    FutureOr<void> Function(UsePutStuffUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UsePutStuffUseCaseProvider._internal(
        (ref) => create(ref as UsePutStuffUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        item: item,
        reportId: reportId,
        isBroken: isBroken,
        comment: comment,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UsePutStuffUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UsePutStuffUseCaseProvider &&
        other.item == item &&
        other.reportId == reportId &&
        other.isBroken == isBroken &&
        other.comment == comment;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, item.hashCode);
    hash = _SystemHash.combine(hash, reportId.hashCode);
    hash = _SystemHash.combine(hash, isBroken.hashCode);
    hash = _SystemHash.combine(hash, comment.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UsePutStuffUseCaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `item` of this provider.
  StorageItem get item;

  /// The parameter `reportId` of this provider.
  int get reportId;

  /// The parameter `isBroken` of this provider.
  bool get isBroken;

  /// The parameter `comment` of this provider.
  String? get comment;
}

class _UsePutStuffUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with UsePutStuffUseCaseRef {
  _UsePutStuffUseCaseProviderElement(super.provider);

  @override
  StorageItem get item => (origin as UsePutStuffUseCaseProvider).item;
  @override
  int get reportId => (origin as UsePutStuffUseCaseProvider).reportId;
  @override
  bool get isBroken => (origin as UsePutStuffUseCaseProvider).isBroken;
  @override
  String? get comment => (origin as UsePutStuffUseCaseProvider).comment;
}

String _$getReportActionStateHash() =>
    r'5787711eb3566b82664a27fa9fce522c29dbae52';

/// See also [getReportActionState].
@ProviderFor(getReportActionState)
const getReportActionStateProvider = GetReportActionStateFamily();

/// See also [getReportActionState].
class GetReportActionStateFamily extends Family<AsyncValue<ReportActionState>> {
  /// See also [getReportActionState].
  const GetReportActionStateFamily();

  /// See also [getReportActionState].
  GetReportActionStateProvider call(
    int stuffId,
  ) {
    return GetReportActionStateProvider(
      stuffId,
    );
  }

  @override
  GetReportActionStateProvider getProviderOverride(
    covariant GetReportActionStateProvider provider,
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
  String? get name => r'getReportActionStateProvider';
}

/// See also [getReportActionState].
class GetReportActionStateProvider
    extends AutoDisposeFutureProvider<ReportActionState> {
  /// See also [getReportActionState].
  GetReportActionStateProvider(
    int stuffId,
  ) : this._internal(
          (ref) => getReportActionState(
            ref as GetReportActionStateRef,
            stuffId,
          ),
          from: getReportActionStateProvider,
          name: r'getReportActionStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getReportActionStateHash,
          dependencies: GetReportActionStateFamily._dependencies,
          allTransitiveDependencies:
              GetReportActionStateFamily._allTransitiveDependencies,
          stuffId: stuffId,
        );

  GetReportActionStateProvider._internal(
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
    FutureOr<ReportActionState> Function(GetReportActionStateRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetReportActionStateProvider._internal(
        (ref) => create(ref as GetReportActionStateRef),
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
  AutoDisposeFutureProviderElement<ReportActionState> createElement() {
    return _GetReportActionStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetReportActionStateProvider && other.stuffId == stuffId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stuffId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetReportActionStateRef
    on AutoDisposeFutureProviderRef<ReportActionState> {
  /// The parameter `stuffId` of this provider.
  int get stuffId;
}

class _GetReportActionStateProviderElement
    extends AutoDisposeFutureProviderElement<ReportActionState>
    with GetReportActionStateRef {
  _GetReportActionStateProviderElement(super.provider);

  @override
  int get stuffId => (origin as GetReportActionStateProvider).stuffId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
