import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors_maneger.dart';
import 'font_manager.dart';

TextStyle _getTextSty(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily);
}

TextStyle _secondGetTextSty(
    double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize.sp,
      fontFamily: FontConstants.secondFontFamily);
}

TextStyle _thirdGetTextSty(
    double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontFamily: FontConstants.thirdFontFamily);
}

TextStyle getRegularStyle(
    {double fontSize = FontSizes.s12,
    FontWeight fontWeight = FontWeightManager.regular,
    required Color color}) {
  return _getTextSty(fontSize, fontWeight, color);
}

TextStyle getLightStyle(
    {double fontSize = FontSizes.s12,
    FontWeight fontWeight = FontWeightManager.light,
    required Color color}) {
  return _getTextSty(fontSize, fontWeight, color);
}

TextStyle getRegularStyleRubic(
    {double fontSize = FontSizes.s10,
    FontWeight fontWeight = FontWeightManager.regular,
    required Color color}) {
  return _thirdGetTextSty(fontSize, fontWeight, color);
}

TextStyle getRegularStyleRoboto({
  double fontSize = FontSizes.s16,
  FontWeight fontWeight = FontWeightManager.regular,
  Color color = ColorsManager.thirdGrey,
}) {
  return _secondGetTextSty(fontSize, fontWeight, color);
}

TextStyle getMediumStyle(
    {double fontSize = FontSizes.s12,
    FontWeight fontWeight = FontWeightManager.medium,
    required Color color}) {
  return _getTextSty(fontSize, fontWeight, color);
}

TextStyle getBoldStyle(
    {double fontSize = FontSizes.s12,
    FontWeight fontWeight = FontWeightManager.bold,
    required Color color}) {
  return _getTextSty(fontSize, fontWeight, color);
}

TextStyle getSemiBoldStyle(
    {double fontSize = FontSizes.s12,
    FontWeight fontWeight = FontWeightManager.semiBold,
    required Color color}) {
  return _getTextSty(fontSize, fontWeight, color);
}
