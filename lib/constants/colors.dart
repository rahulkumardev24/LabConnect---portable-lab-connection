import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors (Brand Colors)
  static const Color primary = Color(0xff424874);  // Science Blue
  static const Color primaryDark = Color(0xff25284a);
  static const Color primaryLight = Color(0xff6c76cc);

  // Secondary Colors
  static const Color secondary = Color(0xffFFBFA9); // Purple
  static const Color secondaryDark = Color(0xffff9c7a);
  static const Color secondaryLight = Color(0xffffcdbb);

  // Science Theme Colors
  static const Color chemistry = Color(0xFFE74C3C);  // Red
  static const Color physics = Color(0xFF3498DB);   // Blue
  static const Color biology = Color(0xFF2ECC71);   // Green
  static const Color math = Color(0xFFF39C12);      // Orange

  // Status Colors
  static const Color success = Color(0xFF27AE60);
  static const Color warning = Color(0xFFF39C12);
  static const Color error = Color(0xFFE74C3C);
  static const Color info = Color(0xFF3498DB);

  // Neutral Colors
  static const Color black = Color(0xFF1A1A1A);
  static const Color gray1 = Color(0xFF4F4F4F);
  static const Color gray2 = Color(0xFF828282);
  static const Color gray3 = Color(0xFFBDBDBD);
  static const Color gray4 = Color(0xFFE0E0E0);
  static const Color gray5 = Color(0xFFF5F5F5);
  static const Color white = Color(0xFFFFFFFF);

  // Background Colors
  static const Color scaffoldLight = Color(0xFFF8F9FA);
  static const Color scaffoldDark = Color(0xFF121212);
  static const Color cardLight = white;
  static const Color cardDark = Color(0xFF1E1E1E);

  // Text Colors
  static const Color textPrimary = black;
  static const Color textSecondary = gray1;
  static const Color textDisabled = gray3;
  static const Color textInverted = white;

  // Dark Mode Variants
  static const Color darkPrimary = Color(0xFF5D9CFF);
  static const Color darkTextPrimary = Color(0xFFE0E0E0);
  static const Color darkTextSecondary = Color(0xFFA0A0A0);

  // Scientific Experiment Colors
  static const Map<String, Color> experimentColors = {
    'titration': Color(0xFF9B59B6),
    'spectroscopy': Color(0xFF3498DB),
    'microscopy': Color(0xFF2ECC71),
    'mechanics': Color(0xFFE67E22),
    'electromagnetism': Color(0xFFF1C40F),
  };

  // Gradient Pairs
  static List<Color> get primaryGradient => [primary, primaryDark];
  static List<Color> get scienceGradient => [chemistry, physics];
  static List<Color> get successGradient => [Color(0xFF2ECC71), Color(0xFF27AE60)];
}