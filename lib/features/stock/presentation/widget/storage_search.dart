import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';
import 'package:stocktacking/features/credential/presentation/notifiers/credential_notifier.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stock/presentation/providers/stock_providers.dart';
import 'package:stocktacking/features/stock/presentation/widget/stock_card.dart';

class StorageSearch extends ConsumerWidget {
  const StorageSearch({super.key, required this.onSelect, required this.selectedItem});

  final void Function(StorageItem? item) onSelect;
  final StorageItem? selectedItem;

  Future<List<StorageItem>> Function(String) buildOnSearch(WidgetRef ref) => (String search) async {
    return await ref.read(searchStoragesProvider.call(search: search).future);
  };

  @override
  Widget build(BuildContext context, ref) {
    return DropdownSearch(
      asyncItems: buildOnSearch(ref),
      itemAsString: (storage) => storage.title,
      selectedItem: selectedItem,
      popupProps:  PopupProps<StorageItem>.menu(
        searchDelay: const Duration(milliseconds: 200),
        showSearchBox: true,
        itemBuilder: (_, storage, __) => StorageItemCard.fromStorage(item: storage, onTap: (){})
      ),
      onChanged: onSelect,
    );
  }
}
