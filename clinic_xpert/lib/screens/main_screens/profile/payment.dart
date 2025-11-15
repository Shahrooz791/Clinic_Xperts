import 'package:clinic_xpert/screens/main_screens/profile/new_card.dart';
import 'package:clinic_xpert/screens/main_screens/profile/profile.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {


  int check = 1;

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ArrowButton(
                  size: Size(40, 40),
                  onTapped: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),)),
                ),
                Text(
                  'My Payment',
                  style: TextStyle(fontSize: 18, color: MyColors.blackShadeOne),
                ),
                ArrowButton(
                  size: Size(40, 40),
                  icons: Icons.add,
                  onTapped: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NewCard(),));
                  },
                ),
              ],
            ),
            SizedBox(height: 24),
            payment((onTapped){
              setState(() {
                check = 1;
              });
            }, check == 1 ? true : false,'assets/images/main_screens/profile/visa.png'),
            SizedBox(height: 16,),
            Center(
              child: SizedBox(
                  width: 267,
                  child: Divider(color: MyColors.greyShadeTwo,)),
            ),
            SizedBox(height: 16,),
            payment((onTapped){
              setState(() {
                check = 2;
              });
            }, check == 2 ? true : false,'assets/images/main_screens/profile/mastercard.png'),
            SizedBox(height: 16,),
            Center(
              child: SizedBox(
                  width: 267,
                  child: Divider(color: MyColors.greyShadeTwo,)),
            ),
            SizedBox(height: 358,),
            Button(text: 'Select Payment',onTapped: (){
              Navigator.pop(context);
            },),
          ],
        ),
      ),
    );
  }
  Widget payment(ValueChanged onTapped,bool value,String image){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Image(image: AssetImage(image)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('BCA (Bank Central Asia)',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
            SizedBox(height: 4,),
            Text('•••• •••• •••• 87652',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree),),
            SizedBox(height: 8,),
            Text('Brooklyn Simmons',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree),),
          ],
        ),
        SizedBox(width: 28,),
        Checkbox(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          activeColor: MyColors.greenShade,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(30),
          ),
          side: BorderSide(style: BorderStyle.solid,color: MyColors.greyShadeTwo,width: 1),
          value: value, onChanged: onTapped,),
      ],
    );
  }
}
