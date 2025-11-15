import 'package:clinic_xpert/screens/main_screens/profile/new-address.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {

  int check = 0;

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
                  onTapped: () => Navigator.pop(context),
                ),
                Text(
                  'My Address',
                  style: TextStyle(fontSize: 18, color: MyColors.blackShadeOne),
                ),
                ArrowButton(
                  size: Size(40, 40),
                  icons: Icons.add,
                  onTapped: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NewAddress(),));
                  },
                ),
              ],
            ),
            SizedBox(height: 24),
            payment((onTapped){
              setState(() {
               check = 1;
              });
            }, check == 1 ? true : false),
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
            }, check == 2 ? true : false),
            SizedBox(height: 16,),
            Center(
              child: SizedBox(
                  width: 267,
                  child: Divider(color: MyColors.greyShadeTwo,)),
            ),
            SizedBox(height: 234,),
            Button(text: 'Select Address',onTapped: (){
              Navigator.pop(context);
            },),
          ],
        ),
      ),
    );
  }
  Widget payment(ValueChanged onTapped,bool value){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: IconButton(
              style: TextButton.styleFrom(
                backgroundColor: MyColors.whiteShadeThree,
              ),
              onPressed: (){}, icon: Icon(Icons.location_on_outlined,color: MyColors.blueShade,)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Brooklyn Simmons',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
            SizedBox(height: 4,),
            Text('+1 3712 3789',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree),),
            SizedBox(height: 8,),
            Text('711 Leavenworth Apt. # 47 San \nFrancisco, CA 94109',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree),),
            SizedBox(height: 12,),
            Button(text: 'Change Address',height: 28,width: 140,brColor: MyColors.blueShade,bgColor: Colors.transparent,shadowColor: Colors.transparent,textStyle: TextStyle(color: MyColors.blueShade,fontSize: 12),),
          ],
        ),
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
