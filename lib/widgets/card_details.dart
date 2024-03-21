import 'package:card_payment_task/constants/app_colors.dart';
import 'package:card_payment_task/widgets/switch_button.dart';
import 'package:card_payment_task/widgets/global_input.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {

  const CardDetails({ super.key });

   @override
   Widget build(BuildContext context) {
    
  final formKey = GlobalKey<FormState>();
       return Form(
        key: formKey,
         child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20,),
                  GlobalInput(
                    text: "Card Number",
                    obscure: false,
                    validator:(v) {
                    if (v == null || v.isEmpty) {
                    return 'Please enter card number';
                  }
                  return null;
                },),
                  const SizedBox(height: 20,),
                  GlobalInput(text: "Cardholer Name",obscure: false,validator: (v) {
                  if (v == null || v.isEmpty) {
                    return 'Please enter cardholder name';
                  }
                  return null;
                },),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: GlobalInput(text: "Expiration Date(MM/YY)",obscure: false,
                        validator: (v) {
                  if (v == null || v.isEmpty) {
                    return 'Please enter a date';
                  }
                  return null;
                },)),
                       const SizedBox(width: 20,),
                      Expanded(
                        child: GlobalInput(text: "CVV Code",obscure: true,
                        validator: (v) {
                  if (v == null || v.isEmpty) {
                    return 'Please enter a cvv code';
                  }
                  return null;
                },),)
                    ],
                  ),
                  const SizedBox(height: 30,),
                  const SwitchButton(),
                  SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 60,
             child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.switchBUttonColor
              ),
              onPressed: (){
                if(formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Processing Data')),
               );
                }
              }, 
              child: const Text(" Pay \$130",style: TextStyle(color: Colors.black,fontSize: 24),),
             ),
           ),
           const Text("Your payment details are secure and encrypted",textAlign: TextAlign.center,style: TextStyle(color: Colors.green),),
                ],
                
               ),
       );
  }
}