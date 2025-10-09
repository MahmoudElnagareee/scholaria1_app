import 'package:flutter/material.dart';

abstract class AppTextStyles {

  static TextStyle poppinsSemiBold({
    double? fontSize,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: fontSize,
      color: color ?? Colors.black,
    );
  }


  static TextStyle poppinsRegular({
    double? fontSize,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      color: color ?? Colors.black,
    );
  }


  static TextStyle comfortaaMedium({
    double? fontSize,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
      color: color ?? Colors.black,
    );
  }


  static TextStyle comfortaaRegular({
    double? fontSize,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      color: color ?? Colors.black,
    );
  }


  static TextStyle comfortaaSemiBold({
    double? fontSize,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w600,
      fontSize: fontSize,
      color: color ?? Colors.black,
    );
  }


  static TextStyle comfortaaBold({
    double? fontSize,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w700,
      fontSize: fontSize,
      color: color ?? Colors.black,
    );
  }
}
