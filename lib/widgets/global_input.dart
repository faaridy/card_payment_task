import 'package:flutter/material.dart';

import 'package:card_payment_task/constants/app_borders.dart';
import 'package:card_payment_task/constants/app_colors.dart';

class GlobalInput extends StatelessWidget {

  const GlobalInput({
    Key? key,
    required this.text,
    required this.obscure,
    required this.validator,
  }) : super(key: key);
  final String text;
  final bool obscure;
  final String? Function(String?)? validator;
   @override
   Widget build(BuildContext context) {
       return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,style: const TextStyle(color: AppColors.grey,fontSize: 18),),
          const SizedBox(height: 10,),
          TextFormField(
            validator: validator,
            style: const TextStyle(color: AppColors.white),
            obscureText: obscure,
            decoration: const InputDecoration(
              filled: true,
              fillColor: AppColors.inputColor,
              border: AppBorders.inputBorder,
              focusedBorder: AppBorders.inputBorder,
              enabledBorder: AppBorders.inputBorder,
              errorBorder: AppBorders.errorInputBorder,
              focusedErrorBorder: AppBorders.errorInputBorder,
              disabledBorder: AppBorders.errorInputBorder
            ),
          )
        ],
       );
  }
}
