import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';

part 'credential_notifier.g.dart';

@Riverpod(keepAlive: true)
class CredentialNotifier extends _$CredentialNotifier {
  @override
  Credential build() => Credential.unauthorised();

  set credential(Credential credential) {
    state = credential;
  }

  Credential get credential{
    return state;
  }
}