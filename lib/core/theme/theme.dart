import 'package:flutter/material.dart';
import 'package:test_flutter_project/core/colors/custom_colors.dart';
import 'package:test_flutter_project/core/style/custom_styles.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: CustomColors.blue,
  cardColor: CustomColors.white,
  scaffoldBackgroundColor: CustomColors.background,
  indicatorColor: CustomColors.lightBlue,
  splashColor: CustomColors.ocean,

  textTheme: TextTheme(
    headlineLarge:
        CustomStyles.headline2.copyWith(color: CustomColors.textColor),
    headlineMedium:
        CustomStyles.headline3.copyWith(color: CustomColors.textColor),
    headlineSmall:
        CustomStyles.headline4.copyWith(color: CustomColors.textColor),
    titleLarge: CustomStyles.headline5.copyWith(color: CustomColors.textColor),
    titleMedium: CustomStyles.headline6.copyWith(color: CustomColors.textColor),
    titleSmall: CustomStyles.headline7.copyWith(color: CustomColors.textColor),
    displayLarge:
        CustomStyles.subHeader1.copyWith(color: CustomColors.textColor),
    displayMedium:
        CustomStyles.subHeader2.copyWith(color: CustomColors.textColor),
    displaySmall:
        CustomStyles.subHeader3.copyWith(color: CustomColors.textColor),
    bodyLarge: CustomStyles.body1.copyWith(color: CustomColors.textColor),
    bodyMedium: CustomStyles.body2.copyWith(color: CustomColors.textColor),
    bodySmall: CustomStyles.body3.copyWith(color: CustomColors.textColor),
    labelLarge: CustomStyles.bodySmall1.copyWith(color: CustomColors.textColor),
    labelMedium:
        CustomStyles.bodySmall2.copyWith(color: CustomColors.textColor),
    labelSmall: CustomStyles.bodySmall3.copyWith(color: CustomColors.textColor),

  ),

);
