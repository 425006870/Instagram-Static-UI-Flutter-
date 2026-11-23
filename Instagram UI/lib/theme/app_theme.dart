import 'package:material_ui/material_ui.dart';

/// Colors sampled from the Week 1-2 Figma wireframes.
class AppColors {
  static const Color blue = Color(0xFF0095F6);
  static const Color text = Color(0xFF262626);
  static const Color muted = Color(0xFF8E8E8E);
  static const Color border = Color(0xFFDBDBDB);
  static const Color field = Color(0xFFFAFAFA);
}

/// One shared ThemeData so both screens look like the same app.
class AppTheme {
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.blue,
          primary: AppColors.blue,
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        dividerTheme: const DividerThemeData(
          color: AppColors.border,
          thickness: 1,
          space: 1,
        ),
        textTheme: const TextTheme(
          // Brand wordmark style.
          displayLarge: TextStyle(
            fontFamily: 'cursive',
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            fontSize: 46,
            color: AppColors.text,
          ),
          // Screen headings.
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.text,
          ),
          // Field text and body copy.
          bodyMedium: TextStyle(fontSize: 14, color: AppColors.text),
          // Hints, captions and small links.
          bodySmall: TextStyle(fontSize: 12, color: AppColors.muted),
        ),
      );
}
