import 'package:examingapp/utilits/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyle{

  static const TextStyle titleTextStyle = TextStyle(
    color: AppColors.textTitlesColor,
    fontSize: 22,
    fontFamily: 'valorant',
  );
  static const TextStyle titleTextChrctr = TextStyle(
      color: AppColors.textTitlesChrctrColor,
      fontSize: 40,
    fontWeight: FontWeight.bold,
    fontFamily: 'valorant',
  );
}