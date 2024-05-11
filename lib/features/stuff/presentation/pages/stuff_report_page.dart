import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';

import '../../../../core/presentation/panel/panel.dart';

class StuffReportPage extends StatefulWidget {
  const StuffReportPage({super.key, required this.isPut, required this.stuffId});

  final bool isPut;
  final int stuffId;

  @override
  State<StuffReportPage> createState() => _StuffReportPageState();
}

class _StuffReportPageState extends State<StuffReportPage> {

  final _commentController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  // final _isProblem = false;

  void _onTapClear() => _commentController.clear();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: widget.isPut ? 'Завершение' : 'Взятие'),
      bottomNavigationBar: Panel(
        child: Row(
          children:[
            Expanded(
              child: ElevatedButton(
                  child: const Text('Положить'),
                  onPressed: () {}
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(widget.isPut) DropdownButtonFormField(
                  items: [
                    for(int i = 0; i< 50; i++)  DropdownMenuItem(
                      value: i,
                      child: Text('Хранилище №$i', style: Theme.of(context).textTheme.displayMedium,),
                    )
                  ],
                  onChanged: (_) {}
              ),
              const SizedBox(height: 14),
              FormField<bool>(
                  builder: (state) => Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Есть ли неисправность?'),
                      // const SizedBox(height: 7),
                      Checkbox(value: state.value, onChanged: (checked) => state.didChange(checked))
                    ],
                  ),
                initialValue: false,
              ),
              const SizedBox(height: 14),
              TextFormField(
                controller: _commentController,
                keyboardType: TextInputType.phone,
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
      ),
    );
  }
}
