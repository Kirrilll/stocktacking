import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/utils/input_formatters/phone_input_formatter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _phoneController = TextEditingController();

  void _onTapClear() => _phoneController.clear();

  static const _phoneMask = '8(###) ### ## ##';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Авторизация'),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              textAlignVertical: TextAlignVertical.center,
              style: Theme.of(context).textTheme.displayMedium,
              inputFormatters: [
                const PhoneInputFormatter(mask: _phoneMask),
                LengthLimitingTextInputFormatter(_phoneMask.length)
              ],
              decoration: InputDecoration(
                labelText: 'Номер телефона',
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
            const SizedBox(height: 14),
            ElevatedButton(onPressed: () {}, child: const Text('Войти'))
          ],
        ),
      ),
    );
  }
}
