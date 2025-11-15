import 'package:clinic_xpert/screens/main_screens/profile/legal_policies.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/input_box.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class NewCard extends StatefulWidget {
  const NewCard({super.key});

  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteShadeTwo,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
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
                SizedBox(width: 53,),
                Text(
                  'Add New Card',
                  style: TextStyle(fontSize: 18, color: MyColors.blackShadeOne),
                ),
              ],
            ),
            SizedBox(height: 24),
            InputBox(topText: 'Card Number', hintText: 'Enter Card Number'),
            SizedBox(height: 24),
            InputBox(topText: 'Card Holder Name', hintText: 'Enter Holder Name'),
            SizedBox(height: 24),
            InputBox(topText: 'Card Holder Name', hintText: 'Enter Holder Name'),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 150,
                    child: InputBox(topText: 'Expired', hintText: 'MM/YY')),
                SizedBox(
                    width: 150,
                    child: InputBox(topText: 'CVV Code', hintText: 'CVV')),
              ],
            ),
            SizedBox(height: 186),
            Button(text: 'Add Card',bgColor: Color(0xffECF1F6),textStyle: TextStyle(color: MyColors.greyShade,fontSize: 16),onTapped: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LegalPolicies(),));
            },),
          ],
        ),
      ),
    );
  }
}
