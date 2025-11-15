import 'package:clinic_xpert/screens/main_screens/bottom_navigation_bar.dart';
import 'package:clinic_xpert/screens/sign_in/sign_up.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/input_box.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewPass extends StatefulWidget {
  const NewPass({super.key});

  @override
  State<NewPass> createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {


  bool bl = false;
  bool bl2 = false;


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
            Text('Create a \nNew Password',textAlign: TextAlign.center,style: TextStyle(fontSize: 24,color: MyColors.blackShadeOne,fontWeight: FontWeight.bold),),
            SizedBox(height: 12,),
            Text('Enter your new password',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree)),
            SizedBox(height: 36,),
            InputBox(topText: 'New Password', hintText: 'Enter new password',
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  if(bl == true){
                    bl = false;
                  }else{
                    bl = true;
                  }
                });
              }, icon: Icon(bl == true ? FontAwesomeIcons.solidEyeSlash : Icons.remove_red_eye,size: bl == true ? 19 : 22,)),obscure: bl,),
            SizedBox(height: 10,),
            InputBox(topText: 'Confirm Password', hintText: 'Confirm your password',
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  if(bl2 == true){
                    bl2 = false;
                  }else{
                    bl2 = true;
                  }
                });
              }, icon: Icon(bl2 == true ? FontAwesomeIcons.solidEyeSlash : Icons.remove_red_eye,size: bl2 == true ? 19 : 22,)),obscure: bl2,),
            SizedBox(height: 40,),
            Button(text: 'Next',onTapped: (){
              showDialog(context: context, builder: (context) {
                return Dialog(
                  child: Container(
                    height: 343,
                    width: 272,
                    decoration: BoxDecoration(
                      color: MyColors.whiteShadeTwo,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/images/sign_in/thumb.png')),
                          SizedBox(height: 24,),
                          Text('Success',textAlign: TextAlign.center,style: TextStyle(fontSize: 24,color: MyColors.blackShadeOne,fontWeight: FontWeight.bold),),
                          SizedBox(height: 12,),
                          Text('Your password is succesfully created',textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree)),
                          SizedBox(height: 20,),
                          SizedBox(
                              height: 46,
                              width: 123,
                              child: Button(text: 'Continue',onTapped: (){
                                Navigator.of(context).pop();
                                Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(builder: (context) => BottomNavigationBarss()),
                                      (route) => false,
                                );
                              },)),
                        ],
                      ),
                    ),
                  ),
                );
              },);
            },),
          ],
        ),
      ),
    );
  }
}
