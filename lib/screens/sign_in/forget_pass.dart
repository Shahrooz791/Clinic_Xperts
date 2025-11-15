import 'package:clinic_xpert/screens/sign_in/new_pass.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/input_box.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteShadeTwo,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 52),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: ArrowButton(onTapped: (){
                Navigator.pop(context);
              },),
            ),
            SizedBox(height: 32,),
            Text('Forgot Password',style: TextStyle(fontSize: 24,color: MyColors.blackShadeOne,fontWeight: FontWeight.bold),),
            SizedBox(height: 12,),
           Text('Recover your account password',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree)),
            SizedBox(height: 32,),
            InputBox(topText: 'E-mail', hintText: 'Enter your email'),
            SizedBox(height: 40,),
            Button(text: 'Next',onTapped: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => NewPass(),));
            },),
          ],
        ),
      ),
    );
  }
}
