import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';
import 'package:stocktacking/features/stuff/presentation/widgets/stuff_card.dart';

import '../../../../core/routing/constants/routing_names.dart';

class UserStuffPage extends StatefulWidget {
  const UserStuffPage({super.key});

  @override
  State<UserStuffPage> createState() => _UserStuffPageState();
}

class _UserStuffPageState extends State<UserStuffPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(context: context, title: 'Главная'),
      body:  Padding(
        padding: const EdgeInsets.all(14),
        child: ExpansionTile(
          title: const Text('Используется'),
          children: [
            SizedBox(
              height: 360,
              child: ListView.separated(
                  controller: _scrollController,
                  itemBuilder: (_, index) => StuffCard(title: 'fhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', id: index,),
                  separatorBuilder: (_, __) => const SizedBox(height: 16),
                  itemCount: 10,
                  shrinkWrap: false,
              ),
            )
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ElevatedButton(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.qr_code_sharp),
              SizedBox(width: 14,),
              Text('Сканировать QR')
            ],
          ) ,
          onPressed: () {
            context.goNamed(stuffTacking);
          },
        ),
      ),
    );
  }
}
