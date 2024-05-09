import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stocktacking/features/credential/presentation/providers/credentials_providers.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});



  _buildOnLogoutPressed(WidgetRef ref) => ()  {
    ref.read(useLogoutUseCaseProvider);
  };

  @override
  Widget build(BuildContext context, ref) {
    return IconButton(
        color: const Color(0x19FF5858),
        iconSize: 24,
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Color(0x33E74646)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ))
        ),
        onPressed: _buildOnLogoutPressed(ref),
        icon: const Icon(
            Icons.logout,
            color: Color(0xFFFF5858)
        )
    );
  }
}
