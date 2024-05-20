import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../stock/domain/entities/storage_base.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {

  const Profile._();

  const factory Profile({
    required final int id,
    required final String name,
    required final int orgId
  }) = _Profile;

  String get title => name;
  StorageBase? get storage => null;
}