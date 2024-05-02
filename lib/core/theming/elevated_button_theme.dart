part of './light_theme.dart';

final _elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
    elevation: const MaterialStatePropertyAll(0),
    side: const MaterialStatePropertyAll(BorderSide.none),
    fixedSize: const MaterialStatePropertyAll(Size.fromHeight(55)),
    foregroundColor: const MaterialStatePropertyAll(Colors.white),
    alignment: Alignment.center,
    backgroundColor: MaterialStateColor.resolveWith((states) {
      // if(states.contains(MaterialState.disabled)) return const Color(0x1113181f);
      return _lightColorScheme.primary;
    }),
    shape: const MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12)))),
    textStyle: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.disabled)) return _textTheme.displaySmall;
      return _textTheme.displaySmall?.copyWith(color: Colors.white);
    })
  )
);