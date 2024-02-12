
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../external_utils/widgets/pref_utils.dart';

class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.primary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.cyan300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 2.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appTheme.cyan300,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.teal50,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyMedium: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: appTheme.gray500,
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 24,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    ),
    labelLarge: TextStyle(
      color: appTheme.gray500,
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      color: appTheme.gray500,
      fontSize: 10,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      color: appTheme.gray500,
      fontSize: 8,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 20,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    ),
  );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFFFFFFF),
    primaryContainer: Color(0XFFD13329),

    // Error colors
    errorContainer: Color(0XFF7AEA78),

    // On colors(text colors)
    onPrimary: Color(0XFF38403F),
    onPrimaryContainer: Color(0XFF051312),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Blue
  Color get blue50 => Color(0XFFEAEFFF);
  Color get blue150 => Color(0xff7155b9);

  // BlueGray
  Color get blueGray200 => Color(0XFFAEB8B7);
  Color get blueGray300 => Color(0XFF9098B1);
  Color get blueGray600 => Color(0XFF626F6E);

  // Cyan
  Color get cyan100 => Color(0XFFBAEDE8);
  Color get cyan300 => Color(0XFF52D1C6);

  // Gray
  Color get gray50 => Color(0XFFFAFAFA);
  Color get gray500 => Color(0XFF8E9C9B);
  Color get gray5001 => Color(0XFFF6FDFC);

  // Teal
  Color get teal300 => Color(0XFF33C0B3);
  Color get teal50 => Color(0XFFDCF6F4);

}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();