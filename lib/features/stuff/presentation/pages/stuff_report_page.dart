import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/riverpod/async_state.dart';
import 'package:stocktacking/core/routing/constants/routing_names.dart';
import 'package:stocktacking/core/toast_notifier/domain/toast_notifier.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stock/presentation/widget/storage_search.dart';
import 'package:stocktacking/features/stuff/presentation/notifiers/report_action_notifier.dart';

import '../../../../core/presentation/panel/panel.dart';

class StuffReportPage extends ConsumerStatefulWidget {
  const StuffReportPage({super.key,  required this.stuffId, this.reportId, this.prevUserId});

  final int? reportId;
  final int? prevUserId;
  final int stuffId;

  @override
  ConsumerState<StuffReportPage> createState() => _StuffReportPageState();
}

class _StuffReportPageState extends ConsumerState<StuffReportPage> {

  final _commentController = TextEditingController();
  final _toastNotifier = const ToastNotifier();
  StorageItem? selectedStorage;
  bool _isBroken = false;

  bool get isPut => widget.reportId != null && widget.prevUserId == null;

  void _onTapClear() => _commentController.clear();
  void _onToggleBroken() => setState(() => _isBroken = !_isBroken);
  void _onSelectStorage(StorageItem? storage) => setState(() => selectedStorage = storage);

  @override
  void initState() {
    super.initState();
    ref
        .read(reportActionNotifierProvider.notifier)
        .setupOnCreateResult(
          onError: (message) => _toastNotifier.showToast(context, message: message, isError: true),
        onSuccessful: () => context.goNamed(userStuff)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: isPut ? 'Завершение' : 'Взятие'),
      bottomNavigationBar: Panel(
        child: Row(
          children:[
            Consumer(
              builder: (_, ref, __)  {
                final sendingState = ref.watch(reportActionNotifierProvider);
                return switch(sendingState) {
                  Loading() => const Center(child: CircularProgressIndicator()),
                  _ => Expanded(
                    child: ElevatedButton(
                        child: const Text('Отправить'),
                        onPressed: () => ref
                            .read(reportActionNotifierProvider.notifier)
                            .onCreateInfo(
                              stuffId: widget.stuffId,
                              prevUserId: widget.prevUserId,
                              storageItem: selectedStorage,
                              reportId: widget.reportId,
                              isBroken: _isBroken,
                              comment: _commentController.text
                          )
                    ),
                  )
                };
              }
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(isPut) StorageSearch(onSelect: _onSelectStorage, selectedItem: selectedStorage),
            const SizedBox(height: 14),
            Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Есть ли неисправность?'),
                    const SizedBox(width: 7),
                    Checkbox(value: _isBroken, onChanged: (_) => _onToggleBroken())
                  ],
                ),
            const SizedBox(height: 14),
            if(_isBroken) TextFormField(
              controller: _commentController,
              keyboardType: TextInputType.text,
              textAlignVertical: TextAlignVertical.center,
              style: Theme.of(context).textTheme.displayMedium,
              decoration: InputDecoration(
                labelText: 'Комментарий',
                suffix: Material(
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: _onTapClear,
                      child: const Icon(Icons.clear)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
