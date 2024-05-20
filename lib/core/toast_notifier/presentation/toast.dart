part of '../domain/toast_notifier.dart';

_buildToast({
  required String message,
  required bool isError,
  required BuildContext context
}) => SnackBar(
    backgroundColor: isError
        ? const Color(0xFFFF5858)
        : const Color(0xFF1B9C85),
    dismissDirection: DismissDirection.horizontal,
    duration: const Duration(seconds: 2),
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
    showCloseIcon: true,
    padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 16),
    closeIconColor: Colors.white,
    content: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
           isError
               ? Icons.cancel_sharp
               : Icons.check_circle,
          size: 24,
          color: Colors.white,
        ),
        const SizedBox(width: 4),
        Expanded(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            clipBehavior: Clip.hardEdge,
            child: Text(
              message,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: Colors.white
              ),
            ),
          ),
        )
      ],
    )
);
