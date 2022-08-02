import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lingua_land/util/colors/colors.dart';

class LightTheme
{
   static ThemeData lightTheme = ThemeData(
     primarySwatch: Colors.teal,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.mainLightColor,
      ),
      color: AppColors.mainLightColor,
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