import 'package:card_payment_task/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppBorders {
  AppBorders._();

  static const inputBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 0,color: AppColors.inputColor),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  static const errorInputBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 2,color: Colors.red),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
}