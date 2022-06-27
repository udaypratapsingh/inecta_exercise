import 'package:flutter/material.dart';
import 'package:inecta_exercise/constants/app_constant.dart';


class AppTheme {
  AppTheme._();

  static const TextStyle smallTitle = TextStyle(
    fontFamily: FontNames.roboto,
    fontWeight: FontWeight.w700,
    fontSize: fontSize_15,
    fontStyle: FontStyle.normal,
    color: Colors.white,
  );
}

class FontNames {
  // Font Names
  static const String roboto = 'Roboto';
}