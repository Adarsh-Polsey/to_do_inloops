import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme Colors
  static const Color _primaryLight = Color(0xFF3564DC);
  static const Color _secondaryLight = Color(0xFF02C1B6);
  static const Color _backgroundLight = Color(0xFFF7F9FC);
  static const Color _surfaceLight = Color(0xFFFFFFFF);
  static const Color _errorLight = Color(0xFFE53935);
  
  // Dark Theme Colors
  static const Color _primaryDark = Color(0xFF5B8DEF);
  static const Color _secondaryDark = Color(0xFF4ECDC4);
  static const Color _backgroundDark = Color(0xFF121A24);
  static const Color _surfaceDark = Color(0xFF1E2A3A);
  static const Color _errorDark = Color(0xFFEF5350);

  // Shared Font Family
  static const String _fontFamily = 'Poppins';

  // Custom Colors for both themes
  static const Color _completedTaskColorLight = Color(0xFFE3EFFF);
  static const Color _completedTaskColorDark = Color(0xFF25364A);

  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: _fontFamily,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: _primaryLight,
      secondary: _secondaryLight,
      background: _backgroundLight,
      surface: _surfaceLight,
      error: _errorLight,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black87,
      onError: Colors.white,
      primaryContainer: _primaryLight.withValues(alpha:0.1),
      onPrimaryContainer: _primaryLight.withValues(alpha:0.9),
    ),
    appBarTheme: const AppBarTheme(
      color: _primaryLight,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Colors.white,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _primaryLight,
      foregroundColor: Colors.white,
      elevation: 4,
      extendedPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    cardTheme: CardTheme(
      color: _surfaceLight,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.antiAlias,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _primaryLight,
        foregroundColor: Colors.white,
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontFamily: _fontFamily,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: _primaryLight,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontFamily: _fontFamily,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _surfaceLight,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.withValues(alpha:0.3)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.withValues(alpha:0.3)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _primaryLight, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _errorLight, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _errorLight, width: 2),
      ),
      labelStyle: TextStyle(color: Colors.grey.shade700),
      hintStyle: TextStyle(color: Colors.grey.shade400),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.selected)) {
          return _primaryLight;
        }
        return Colors.transparent;
      }),
      side: BorderSide(width: 1.5, color: Colors.grey.shade400),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.grey.withValues(alpha:0.2),
      thickness: 1,
      space: 1,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.black87,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.black87,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.black87,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.black87,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.black87,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.black87,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.black87,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.black87,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.black87,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.black54,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
    ),
    scaffoldBackgroundColor: _backgroundLight,
    shadowColor: Colors.black.withValues(alpha:0.1),
    extensions: <ThemeExtension<dynamic>>[
      CustomThemeColors(
        completedTaskColor: _completedTaskColorLight,
        taskTileShadowColor: Colors.black.withValues(alpha:0.05),
      ),
    ],
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: _fontFamily,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: _primaryDark,
      secondary: _secondaryDark,
      background: _backgroundDark,
      surface: _surfaceDark,
      error: _errorDark,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.white,
      onError: Colors.white,
      primaryContainer: _primaryDark.withValues(alpha:0.15),
      onPrimaryContainer: _primaryDark.withValues(alpha:0.85),
    ),
    appBarTheme: AppBarTheme(
      color: _surfaceDark,
      elevation: 0,
      centerTitle: false,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: const TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Colors.white,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _primaryDark,
      foregroundColor: Colors.white,
      elevation: 4,
      extendedPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    cardTheme: CardTheme(
      color: _surfaceDark,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.antiAlias,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _primaryDark,
        foregroundColor: Colors.white,
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontFamily: _fontFamily,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: _primaryDark,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontFamily: _fontFamily,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _surfaceDark.withValues(alpha:0.7),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade700),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade800),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _primaryDark, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _errorDark, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _errorDark, width: 2),
      ),
      labelStyle: TextStyle(color: Colors.grey.shade300),
      hintStyle: TextStyle(color: Colors.grey.shade500),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.selected)) {
          return _primaryDark;
        }
        return Colors.transparent;
      }),
      side: BorderSide(width: 1.5, color: Colors.grey.shade600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.grey.shade700.withValues(alpha:0.3),
      thickness: 1,
      space: 1,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.white70,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: TextStyle(
        fontFamily: _fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    ),
    scaffoldBackgroundColor: _backgroundDark,
    shadowColor: Colors.black.withValues(alpha:0.3),
    extensions: <ThemeExtension<dynamic>>[
      CustomThemeColors(
        completedTaskColor: _completedTaskColorDark,
        taskTileShadowColor: Colors.black.withValues(alpha:0.2),
      ),
    ],
  );
}

// Custom theme extension to add application-specific colors
class CustomThemeColors extends ThemeExtension<CustomThemeColors> {
  final Color completedTaskColor;
  final Color taskTileShadowColor;

  CustomThemeColors({
    required this.completedTaskColor,
    required this.taskTileShadowColor,
  });

  @override
  ThemeExtension<CustomThemeColors> copyWith({
    Color? completedTaskColor,
    Color? taskTileShadowColor,
  }) {
    return CustomThemeColors(
      completedTaskColor: completedTaskColor ?? this.completedTaskColor,
      taskTileShadowColor: taskTileShadowColor ?? this.taskTileShadowColor,
    );
  }

  @override
  ThemeExtension<CustomThemeColors> lerp(
    covariant ThemeExtension<CustomThemeColors>? other,
    double t,
  ) {
    if (other is! CustomThemeColors) {
      return this;
    }
    return CustomThemeColors(
      completedTaskColor: Color.lerp(completedTaskColor, other.completedTaskColor, t)!,
      taskTileShadowColor: Color.lerp(taskTileShadowColor, other.taskTileShadowColor, t)!,
    );
  }
}