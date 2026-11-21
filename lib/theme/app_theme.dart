import 'package:flutter/material.dart';

class AppColors {
  // Հիմնական գույներ (Travel palette)
  static const Color primary = Color(0xFF006D77);      // Խորը ծովային փիրուզագույն
  static const Color secondary = Color(0xFFE29578);    // Տաք ակցենտ (կոճակներ, պիտակներ)
  static const Color background = Color(0xFFF6F9F9);   // Էջերի բաց ֆոն
  static const Color surface = Colors.white;           // Քարտերի ֆոն
  static const Color textDark = Color(0xFF1D3557);     // Հիմնական մուգ տեքստ
  static const Color textGrey = Color(0xFF6C757D);     // Երկրորդական մոխրագույն տեքստ
  static const Color error = Color(0xFFD62828);        // Սխալի գույն
  static const Color success = Color(0xFF2A9D8F);      // Հաջողության գույն
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.surface,
        error: AppColors.error,
      ),

      // Բոլոր էջերի վերևի AppBar-ի միասնական տեսքը
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.textDark,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: AppColors.textDark,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),

      // Բոլոր ElevatedButton կոճակների միասնական տեսքը
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 52),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      // Բոլոր TextField / TextFormField դաշտերի միասնական տեսքը
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintStyle: const TextStyle(color: AppColors.textGrey, fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.error),
        ),
      ),
    );
  }
}