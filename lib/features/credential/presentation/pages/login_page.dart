import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/riverpod/async_state.dart';
import 'package:stocktacking/core/utils/input_formatters/phone_input_formatter.dart';
import 'package:stocktacking/features/credential/presentation/notifiers/login_page_notifier.dart';
import 'package:stocktacking/features/credential/presentation/providers/credentials_providers.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {

  final _phoneController = TextEditingController();

  void _onTapClear() => _phoneController.clear();

  static const _phoneMask = '8(###) ### ## ##';

  @override
  void initState() {
    ref.read(loginPageNotifierProvider.notifier).setupOnError((error) {

    });
    super.initState();
  }

  void _onLoginTap() => ref
      .read(loginPageNotifierProvider.notifier)
      .login(_phoneController.text);

  @override
  Widget build(BuildContext context) {

    final loginState = ref.watch(loginPageNotifierProvider);

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
            ElevatedButton(
                onPressed: _onLoginTap,
                child: switch(loginState) {
                  Loading() => const Center(child: CircularProgressIndicator()),
                  _ => const Text('Войти')
                }
            )
          ],
        ),
      ),
    );
  }
}
