import 'package:flutter/material.dart';

import '../../../../core/presentation/app_bar/build_app_bar.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {

  final _passwordController = TextEditingController();

  void _onTapClear() => _passwordController.clear();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

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
              controller: _passwordController,
              keyboardType: TextInputType.text,
              obscureText: true,
              textAlignVertical: TextAlignVertical.center,
              style: Theme.of(context).textTheme.displayMedium,
              decoration: InputDecoration(
                labelText: 'Пароль',
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
            // ElevatedButton(
            //     onPressed: _onLoginTap,
            //     child: switch(loginState) {
            //       Loading() => const Center(child: CircularProgressIndicator()),
            //       _ => const Text('Войти')
            //     }
            // )
          ],
        ),
      ),
    );
  }
}
