import 'package:flutter/material.dart';

class AppTextStyles {
  static const String primaryFont = 'primary';

  static Color _getTextColor(Color? color) {
    return color ?? Colors.black;
  }

  // Base text style generator
  static TextStyle _baseStyle({
    required double fontSize,
    Color? color,
    FontWeight fontWeight = FontWeight.normal,
    String? fontFamily,
    double? height,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: _getTextColor(color),
      fontSize: fontSize,
      fontFamily: fontFamily ?? primaryFont,
      fontWeight: fontWeight,
      height: height,
      decoration: decoration,
    );
  }

  /// Size 12 - For captions and small labels
  static TextStyle size12({
    Color? color,
    FontWeight fontWeight = FontWeight.normal,
    String? fontFamily,
  }) => _baseStyle(
    fontSize: 12,
    color: color,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    height: 1.4, // Better line spacing for small text
  );

  /// Size 15 - For body text
  static TextStyle size15({
    Color? color,
    FontWeight fontWeight = FontWeight.normal,
    String? fontFamily,
  }) => _baseStyle(
    fontSize: 15,
    color: color,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    height: 1.5,
  );

  /// Size 18 - For subheadings
  static TextStyle size18({
    Color? color,
    FontWeight fontWeight = FontWeight.w500, // Slightly bolder by default
    String? fontFamily,
  }) => _baseStyle(
    fontSize: 18,
    color: color,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    height: 1.4,
  );

  /// Size 24 - For headings
  static TextStyle size24({
    Color? color,
    FontWeight fontWeight = FontWeight.w600,
    String? fontFamily,
  }) => _baseStyle(
    fontSize: 24,
    color: color,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    height: 1.3,
  );

  /// Size 36 - For large headings
  static TextStyle size36({
    Color? color,
    FontWeight fontWeight = FontWeight.bold,
    String? fontFamily,
  }) => _baseStyle(
    fontSize: 36,
    color: color,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    height: 1.2,
  );

  /// Size 48 - For display text
  static TextStyle size48({
    Color? color,
    FontWeight fontWeight = FontWeight.bold,
    String? fontFamily,
  }) => _baseStyle(
    fontSize: 48,
    color: color,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    height: 1.1,
  );

  // Utility styles
  static TextStyle buttonText({Color? color, String? fontFamily}) =>
      size18(color: color, fontWeight: FontWeight.w600, fontFamily: fontFamily);

  static TextStyle linkText({Color? color, String? fontFamily}) => size15(
    color: color ?? Colors.blue,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
  ).copyWith(decoration: TextDecoration.underline);
}
