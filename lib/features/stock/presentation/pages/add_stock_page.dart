import 'package:flutter/material.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';

class AddStockPage extends StatefulWidget {
  const AddStockPage({super.key});

  @override
  State<AddStockPage> createState() => _AddStockPageState();
}

class _AddStockPageState extends State<AddStockPage> {

  final _storageTitleController = TextEditingController();

  var _isStock = false;

  void toggleStock(bool? value) {
    setState(() => _isStock = !_isStock);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Создание хранилища'),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Panel(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _storageTitleController,
                style: Theme.of(context).textTheme.displayMedium,
                decoration: const InputDecoration(
                    labelText: 'Название'
                ),
              ),
              Row(
                children: [
                  const Text('Это склад'),
                  const SizedBox(width: 14),
                  Checkbox(value: _isStock, onChanged: toggleStock)
                ],
              ),
              const SizedBox(height: 14),
              Builder(builder: (_) {
                if(_isStock) return const Text('Склад');
                return const Text('Хранилище');
              })
            ],
          ),
        ),
      ),
    );
  }
}
