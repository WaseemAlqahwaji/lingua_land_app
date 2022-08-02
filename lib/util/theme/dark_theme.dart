import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lingua_land/util/colors/colors.dart';

class DarkTheme
{
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.mainDarkColor,
      ),
      color: AppColors.mainDarkColor,
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.w900,
        fontFamily: 'RaleWay',
        fontSize: 20.0,
      ),
      centerTitle: true,
      elevation: 0.0,
    ),
  );
}