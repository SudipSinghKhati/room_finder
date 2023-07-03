import 'package:flutter/material.dart';
import 'package:room_finder_app/config/constants/app_color_constant.dart';

class AppTheme {
  AppTheme._();

  static getApplicationTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.dark(
          // primary: AppColorConstant.primaryColor,
          ),
      fontFamily: 'BioRhyme',
      useMaterial3: true,

      //appbarTheme
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.green, fontSize: 20),
      ),

      //elevatedButton theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColorConstant.primaryColor,
            foregroundColor: Colors.green),
      ),

      //bottomNavigation theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),

      //TextTheme
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.green),
      ),

      //theme inputDecoration
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 3,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          borderSide: BorderSide(
            width: 2,
            color: Colors.white,
          ),
        ),
        labelStyle: TextStyle(color: Colors.white),
        hintStyle: TextStyle(color: Colors.white),
      ),

      //radio button
      radioTheme: RadioThemeData(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.white)),
    );
  }
}
