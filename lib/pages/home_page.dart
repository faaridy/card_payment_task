import 'package:card_payment_task/constants/app_colors.dart';
import 'package:card_payment_task/widgets/card_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return const Scaffold(
        backgroundColor: AppColors.backgorundcolor,
           body: SingleChildScrollView(
             child: Padding(
               padding: EdgeInsets.all(20),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: 20,),
                Text("Payment Details",style: TextStyle(color: AppColors.white,fontSize: 32,fontWeight: FontWeight.bold),),
                CardDetails(),
                SizedBox(height: 40,),
                ],
               ),
             ),
           ),
       );
  }
}