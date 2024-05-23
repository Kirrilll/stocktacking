import '../../../stuff/domain/entities/stuff.dart';
import '../../domain/entities/storage.dart';

class StoragesAndStuffState {
  final List<StorageItem> storages;
  final List<Stuff> stuffs;

  const StoragesAndStuffState({
    required this.storages,
    required this.stuffs,
  });
}
