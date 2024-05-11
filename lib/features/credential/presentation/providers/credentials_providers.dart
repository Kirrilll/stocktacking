import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/credential/data/data_sources/mock_remote_credential_data_source.dart';
import 'package:stocktacking/features/credential/data/data_sources/remote_credential_data_source.dart';
import 'package:stocktacking/features/credential/data/repositories/credential_repository_impl.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';
import 'package:stocktacking/features/credential/domain/entities/role.dart';
import 'package:stocktacking/features/credential/domain/repositories/credential_repository.dart';
import 'package:stocktacking/features/credential/presentation/notifiers/credential_notifier.dart';
import 'package:stocktacking/features/credential/presentation/utils/credential_route_guard.dart';

part 'credentials_providers.g.dart';

@riverpod
RemoteCredentialDataSource remoteCredentialDataSource(RemoteCredentialDataSourceRef ref) {
  return MockRemoteCredentialDataSource();
}

@riverpod
CredentialRepository credentialRepository(CredentialRepositoryRef ref) {
  final remoteDataSource = ref.read(remoteCredentialDataSourceProvider);
  return CredentialRepositoryImpl(remoteCredentialDataSource: remoteDataSource);
}

@riverpod
Future<Credential> useLoginUseCase(UseLoginUseCaseRef ref, String phone) async {
  final credentialRepository = ref.read(credentialRepositoryProvider);
  final credential = ref.read(credentialNotifierProvider.notifier);
  return (await credentialRepository.login(phone))
      .match(
          (l) => throw l,
          (r) =>  credential.credential = r
  );
}

@riverpod
Future<void> useLogoutUseCase(UseLogoutUseCaseRef ref) async {
  final credentialRepository = ref.watch(credentialRepositoryProvider);
  final credential = ref.watch(credentialNotifierProvider.notifier);
  await credentialRepository.logout();
  credential.credential = Credential.unauthorised();
}

@Riverpod(keepAlive: true)
bool isAuthorised(IsAuthorisedRef ref) {
  return ref.watch(credentialNotifierProvider.notifier).credential.isAuthorised;
}

@Riverpod(keepAlive: true)
bool isStockKeeper(IsStockKeeperRef ref) {
  final credential = ref.watch(credentialNotifierProvider);
  return switch(credential) {
    Authorised(:final accessToken, :final role) => role == Role.storekeeper,
    _ => false
  };
}

@Riverpod(keepAlive: true)
CredentialRouteGuard credentialRouteGuard(CredentialRouteGuardRef ref) {
  final ValueNotifier<bool> isAuthNotifier = ValueNotifier(false);
  ref.listen(credentialNotifierProvider, (_, curr) {
    isAuthNotifier.value = curr.isAuthorised;
  }, fireImmediately: true);

  return CredentialRouteGuard(isAuthNotifier);
}