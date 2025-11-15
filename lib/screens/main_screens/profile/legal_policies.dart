import 'package:clinic_xpert/screens/main_screens/profile/payment.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class LegalPolicies extends StatefulWidget {
  const LegalPolicies({super.key});

  @override
  State<LegalPolicies> createState() => _LegalPoliciesState();
}

class _LegalPoliciesState extends State<LegalPolicies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteShadeTwo,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24,right: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 53),
              Row(
                children: [
                  ArrowButton(
                    size: Size(40, 40),
                    onTapped: () => Navigator.pop(context),
                  ),
                  SizedBox(width: 38,),
                  Text(
                    'Legal and Policies',
                    style: TextStyle(fontSize: 18, color: MyColors.blackShadeOne),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text('1. Terms',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
              SizedBox(height: 10,),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.',style: TextStyle(fontSize: 14,color: MyColors.greyShadeFive),),
              SizedBox(height: 8,),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.',style: TextStyle(fontSize: 14,color: MyColors.greyShadeFive),),
              SizedBox(height: 24),
              Text('Changes to the Service and/or Terms:',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
              SizedBox(height: 10,),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.',style: TextStyle(fontSize: 14,color: MyColors.greyShadeFive),),
              SizedBox(height: 8,),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.',style: TextStyle(fontSize: 14,color: MyColors.greyShadeFive),),
              SizedBox(height: 30,),
              Button(text: 'Agree',onTapped: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
              },),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
