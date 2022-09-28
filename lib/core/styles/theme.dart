import 'package:animations/core/styles/colors_styles.dart';
import 'package:animations/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  fontFamily: 'Roboto',
  colorScheme: ColorScheme.fromSwatch().copyWith(
    brightness: Brightness.dark,
    secondary: kLightBlueColor,
    background: kDarkBlueColor,
    primary: kBlueColor,
  ),
  textTheme: TextTheme(
    headline1: kHeadline1,
    headline2: kHeadline2,
    headline3: kHeadline3,
    headline4: kHeadline4,
    headline5: kHeadline5,
    headline6: kHeadline6,
    subtitle1: kSubtitle1,
    subtitle2: kSubtitle2,
    bodyText1: kBodyText1,
    bodyText2: kBodyText2,
    button: kButton,
    caption: kCaption,
    overline: kOverline,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      foregroundColor: MaterialStateProperty.all(Colors.black),
      textStyle: MaterialStateProperty.all(kButton),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      side: const BorderSide(color: kGreenColor, width: 1),
      textStyle: kButton,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: kWhiteColor, width: 1),
      gapPadding: 16,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: kWhiteColor, width: 1),
      gapPadding: 16,
    ),
    fillColor: const Color.fromRGBO(0, 22, 22, 0),
    filled: true,
    labelStyle: const TextStyle(
      color: kWhiteColor,
    ),
  ),
  scaffoldBackgroundColor: kDarkBlueColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: kDarkBlueColor,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  snackBarTheme: const SnackBarThemeData(
    backgroundColor: kGreenColor,
    contentTextStyle: TextStyle(
      color: kWhiteColor,
    ),
  ),
);
