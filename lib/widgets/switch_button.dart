
import 'package:card_payment_task/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {

  const SwitchButton({ super.key });

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {

  bool a = true;
   @override
   Widget build(BuildContext context) {
       return Column(
         children:[
          Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.inputColor),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Save Payment Info",style: TextStyle(fontSize: 22,color: AppColors.grey),),
              Switch(value: a, 
              activeColor: AppColors.switchBUttonColor,
              onChanged: (bool b)=> setState(() => a = b)),
            ],
          ),
         ),
         const SizedBox(height: 40,),
         
         ] 
       );
  }
}