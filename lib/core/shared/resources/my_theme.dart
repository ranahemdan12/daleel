import 'package:flutter/material.dart';

import 'colors_maneger.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      /// login and register text
      displayLarge: GoogleFonts.cairo(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),

      /// login with facebook , apple,textformfield in login ,egister screen
      /// appbar homescereen ,tab bar
      titleMedium: GoogleFonts.cairo(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: ColorsManager.maincolor),

      /// botton navigation bar
      bodySmall: getRegularStyleRubic(
        color: ColorsManager.grey2,
      ),

      /// each card
      bodyLarge: getMediumStyle(
        color: ColorsManager.blackMain,
      ),

      /// each dropdown , search and tab bar on map
      bodyMedium: getRegularStyleRoboto(),

      /// maximum value like profile
      titleLarge: getSemiBoldStyle(
          color: ColorsManager.blackMain, fontSize: FontSizes.s12),

      /// forget password
      displaySmall: getRegularStyle(color: ColorsManager.grey),
    ),
  );
}
