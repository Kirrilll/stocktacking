part of './light_theme.dart';


final _inputDecorationTheme = InputDecorationTheme(
  outlineBorder: BorderSide.none,
  filled: true,
  fillColor: _lightColorScheme.primaryContainer,
  constraints: const BoxConstraints(maxHeight: 59),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: _lightColorScheme.primary, width: 2),
    borderRadius: const BorderRadius.all(Radius.circular(12))
  ),
  errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Color(0XFFB3261E), width: 2),
      borderRadius: BorderRadius.all(Radius.circular(12))
  ),
  border: const OutlineInputBorder(
    borderSide: BorderSide(color: Color(0XFF111318), width: 2),
    borderRadius: BorderRadius.all(Radius.circular(12))
  ),
  enabledBorder:  OutlineInputBorder(
      borderSide: BorderSide(color: const Color(0XFF111318).withOpacity(0.35), width: 2),
      borderRadius: const BorderRadius.all(Radius.circular(12))
  ),
  prefixIconColor: const Color(0xFF111318)
);