import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stocktacking/app/routing_provider.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';
import 'package:stocktacking/core/routing/constants/routing_names.dart';
import 'package:stocktacking/core/routing/constants/routing_params.dart';
import '../../../../core/presentation/action_button/action_button.dart';

class StuffDetailPage extends ConsumerWidget {

  final int stuffId;

  const StuffDetailPage(this.stuffId, {super.key});

  void Function() _buildOnHistoryTap(WidgetRef ref) => () => ref
      .read(locationServiceProvider)
      .goNamed(name: stuffHistory, params: {stuffIdParam: stuffId.toString()});

  void Function() _buildOnPutTap(WidgetRef ref) => () => ref
      .read(locationServiceProvider)
      .goNamed(name: stuffReport, params: {stuffIdParam: stuffId.toString(), stuffReportIsPutParam: true.toString()});

  void Function() _buildOnQrTap(WidgetRef ref) => () => ref
      .read(locationServiceProvider)
      .goNamed(name: stuffPhysicalIdentifier, params: {stuffIdParam: stuffId.toString()});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: buildAppBar(
          context: context,
          title: 'Предмет',
          actions: [
            ActionButton(icon: Icons.history, onTap: _buildOnHistoryTap(ref)),
            ActionButton(onTap: _buildOnQrTap(ref), icon: Icons.qr_code_outlined)
          ]
      ),
      bottomNavigationBar:
        Panel(
          child: Row(
            children:[
              Expanded(
                child: ElevatedButton(
                  onPressed: _buildOnPutTap(ref),
                  child: const Text('Положить')
                ),
              )
            ],
          ),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Panel(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Название предмета', style: Theme.of(context).textTheme.displayLarge,),
                      const SizedBox(height: 14),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Находится'),
                          Text('У Павла'),
                        ],
                      ),
                      const SizedBox(height: 14),
                      ExpansionTile(
                        title: Text('Фото предмета', style: Theme.of(context).textTheme.displayMedium,),
                        childrenPadding: const EdgeInsets.all(16),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          side: BorderSide(color: Color(0x1113181A), width: 1)
                        ),
                        collapsedShape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            side: BorderSide(color: Color(0x1113181A), width: 1)
                        ),
                        children: [
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgQi0IGMdbpbTN-4FXK1YBBT1V4VZz7eQwUHCShgZrGQ&s',
                            fit: BoxFit.contain,
                          )
                        ],
                      )
                    ],
                  ),
              ),
              const SizedBox(height: 14),
              Panel(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                        Row(
                          children: [
                            const DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Color(0xFF3FE06C),
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(50),
                                      bottom:  Radius.circular(50)
                                  ),
                                ),
                              child: SizedBox(width: 8, height: 28),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Состояние',
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                          ],
                        ),
                      const SizedBox(height: 14),
                      const Text('Неполадок не обнаружено')
                    ],
                  )
              ),
              const SizedBox(height: 14),
              Panel(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Доп. информация',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(height: 14),
                      ListView.separated(
                        shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (_, index) => ExpansionTile(
                              title: Text('Параметр $index', style: Theme.of(context).textTheme.displayMedium),
                              childrenPadding: const EdgeInsets.all(16),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                  side: BorderSide(color: Color(0x1113181A), width: 1)
                              ),
                              collapsedShape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                  side: BorderSide(color: Color(0x1113181A), width: 1)
                              ),
                            children: [
                              Text('Какието-свойства параметра $index')
                            ]
                          ),
                          separatorBuilder: (_, __) => const SizedBox(height: 14),
                          itemCount: 3
                      )
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
