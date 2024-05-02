part of './light_theme.dart';

final _lightExpansionTileTheme = ExpansionTileThemeData(
  backgroundColor: _lightColorScheme.primaryContainer,
  shape: const RoundedRectangleBorder(
    side: BorderSide.none,
    borderRadius: BorderRadius.all(Radius.circular(16))
  ),
  collapsedShape: const RoundedRectangleBorder(
      side: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(16))
  ),
  childrenPadding: const EdgeInsets.all(16),
  clipBehavior: Clip.hardEdge
);