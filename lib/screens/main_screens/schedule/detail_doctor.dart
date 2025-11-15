import 'package:clinic_xpert/screens/main_screens/schedule/appoinment.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class DetailDoctor extends StatefulWidget {
  const DetailDoctor({super.key});

  @override
  State<DetailDoctor> createState() => _DetailDoctorState();
}

class _DetailDoctorState extends State<DetailDoctor> {
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
                  size:  Size(40, 40),
                  onTapped: () => Navigator.pop(context),
                ),
                SizedBox(width: 57),
                Text(
                  'Detail Doctor',
                  style: TextStyle(fontSize: 18, color: MyColors.blackShadeOne),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Image(image: AssetImage('assets/images/main_screens/schedule/detailDoctor.png')),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('dr. Skylar Korsgaard',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 16),),
                    Text('Dental Specialist',style: TextStyle(color: MyColors.greyShadeThree,fontSize: 12),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star,color: MyColors.yelloShade,size: 17,),
                      SizedBox(width: 2,),
                      Text('4.0',style: TextStyle(fontSize: 12,color: MyColors.blackShadeOne),),
                      SizedBox(width: 7,),
                      Text('(191 Reviews)',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text('Description',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 16),),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor ac leo lorem nisl. Viverra vulputate sodales quis et dui, lacus. Iaculis eu egestas leo egestas vel. Ultrices ut magna nulla facilisi commodo enim, orci feugiat pharetra. Id sagittis, ullamcorper turpis ultrices platea pharetra.',style: TextStyle(color: MyColors.greyShadeThree,fontSize: 14),),
          SizedBox(height: 10,),
            Text('Location',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 16),),
            SizedBox(height: 12,),
            Image(image: AssetImage('assets/images/main_screens/schedule/map.png')),
            SizedBox(height: 29,),
            Button(text: 'Make Appointment',onTapped: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Appoinment(),));
            },),
          ],
        ),
      ),
    );
  }
}
