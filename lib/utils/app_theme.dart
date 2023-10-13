import 'package:flutter/material.dart';
import 'package:health_care_app/utils/colors.dart';

abstract class AppThemes {
  static const TextStyle moody = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 24, color: AppColor.black);

  static const TextStyle appDescription =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 16);

  static const TextStyle analytics =
  TextStyle(fontWeight: FontWeight.w500, fontSize: 14);

  static const TextStyle welcomeText =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 20);

  static const TextStyle tabBarContentTitle =
  TextStyle(fontWeight: FontWeight.w600, fontSize: 20);

  static const TextStyle emotionDescription =
  TextStyle(fontWeight: FontWeight.w400, fontSize: 14);
  static const TextStyle tabBarContentDescription =
  TextStyle(fontWeight: FontWeight.w400, fontSize: 12);

  static const TextStyle exerciseContainer =
  TextStyle(fontWeight: FontWeight.w500, fontSize: 14);

  static const TextStyle seeMoreText =
  TextStyle(fontWeight: FontWeight.w600, fontSize: 14);
  static const TextStyle titles =
  TextStyle(fontWeight: FontWeight.w600, fontSize: 18);

  static ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: AppColor.transparent,
  ));
}
