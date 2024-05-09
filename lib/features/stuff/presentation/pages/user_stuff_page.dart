import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/app/routing_provider.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/routing/constants/routing_params.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stuff/presentation/notifiers/using_stuff_notifier.dart';
import 'package:stocktacking/features/stuff/presentation/widgets/stuff_card.dart';
import '../../../../core/routing/constants/routing_names.dart';
import '../../../credential/presentation/widgets/logout_button.dart';

class UserStuffPage extends ConsumerStatefulWidget {
  const UserStuffPage({super.key});

  @override
  ConsumerState<UserStuffPage> createState() => _UserStuffPageState();
}

class _UserStuffPageState extends ConsumerState<UserStuffPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {

    final usingStuffState = ref.watch(usingStuffNotifierProvider);

    return RefreshIndicator(
      displacement: 80,
      onRefresh: () async{},
      child: Scaffold(
        appBar: buildAppBar(context: context, title: 'Главная', actions: [const LogoutButton()]),
        body: Padding(
            padding: const EdgeInsets.all(14),
            child: switch(usingStuffState) {
              AsyncError(:final error, :final stackTrace) => Column(
                children: [
                  Text(error is IFailure
                      ? error.message
                      : 'Что-то пошло нет('),
                  const SizedBox(height: 14),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text('Попробовать снова'))
                ],
              ),
              AsyncData(:final value) => ExpansionTile(
                title: const Text('Используется'),
                children: [
                  SizedBox(
                    height: 360,
                    child:  value.isEmpty
                        ? Center(child: Text('Ничего не используется', style: Theme.of(context).textTheme.displayMedium,))
                        : ListView.separated(
                            controller: _scrollController,
                            itemBuilder: (_, index) => StuffCard(
                                title: value[index].title,
                                id: value[index].id,
                                onTap: () => ref
                                    .read(locationServiceProvider)
                                    .goNamed(name: stuffDetail, params: {stuffIdParam: value[index].id.toString()}),
                            ),
                            separatorBuilder: (_, __) => const SizedBox(height: 16),
                            itemCount: value.length,
                            shrinkWrap: false,
                    ),
                  )
                ],
              ),
              _ => Center(child: CircularProgressIndicator(color: Theme.of(context).colorScheme.primary,))
            }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(14.0),
          child: ElevatedButton(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.qr_code_sharp),
                SizedBox(
                  width: 14,
                ),
                Text('Сканировать QR')
              ],
            ),
            onPressed: () {
              context.goNamed(stuffTacking);
            },
          ),
        ),
      ),
    );
  }
}
