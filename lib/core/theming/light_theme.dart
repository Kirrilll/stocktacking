import 'package:flutter/material.dart';

part './color_sheme.dart';
part './elevated_button_theme.dart';
part './text_theme.dart';
part './bottom_navigation_bar_theme.dart';
part './expansion_tile_theme.dart';
part './input_decoration_theme.dart';
part './progress_indicator_theme.dart';

final lightTheme = ThemeData.light(useMaterial3: true).copyWith(
  colorScheme: _lightColorScheme,
  elevatedButtonTheme: _elevatedButtonThemeData,
  textTheme: _textTheme,
  scaffoldBackgroundColor: _lightColorScheme.background,
  expansionTileTheme: _lightExpansionTileTheme,
  inputDecorationTheme: _inputDecorationTheme,
  progressIndicatorTheme: _progressIndicatorThemeData,
  // bottomNavigationBarTheme: _bottomNavigationBarTheme
);
