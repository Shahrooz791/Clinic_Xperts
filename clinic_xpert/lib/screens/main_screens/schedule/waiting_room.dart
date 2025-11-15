import 'package:clinic_xpert/screens/main_screens/message/message.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class WaitingRoom extends StatefulWidget {
  const WaitingRoom({super.key});

  @override
  State<WaitingRoom> createState() => _WaitingRoomState();
}

class _WaitingRoomState extends State<WaitingRoom> {
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
                SizedBox(width: 57),
                Text(
                  'Waiting Room',
                  style: TextStyle(
                    fontSize: 18,
                    color: MyColors.blackShadeOne,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Card(
              elevation: 30,
              child: Container(
                height: 141,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: MyColors.blueShade,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24,left: 20),
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Image(image: AssetImage('assets/images/main_screens/home/doctor.png'))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24,left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('dr. Ruben Dorwart',style: TextStyle(fontSize: 16,color: MyColors.whiteShadeTwo),),
                          Text('Dental Specialist',style: TextStyle(fontSize: 12,color: MyColors.greyShadeFour),),
                          SizedBox(height: 17,),
                          Container(
                            height: 28,
                            width: 210,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xff1717251F),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.calendar_month,color: MyColors.whiteShadeTwo,size: 17,),
                                Text('Today',style: TextStyle(fontSize: 12,color: MyColors.whiteShadeTwo),),
                                SizedBox(width: 12,),
                                Icon(Icons.access_time_rounded,color: MyColors.whiteShadeTwo,size: 17,),
                                Text('14:30 - 15:30 AM  ',style: TextStyle(fontSize: 12,color: MyColors.whiteShadeTwo),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Text('Preparation before the appointment',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
            SizedBox(height: 24),
            Container(
              height: 67,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.fromBorderSide(BorderSide(color: Color(0xffF2F2F5))),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    SizedBox(width: 14,),
                    Image(image: AssetImage('assets/images/main_screens/schedule/list.png')),
                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Fill the form for Inquires',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                        Text('Lorem ipsum dolor sit amet',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Color(0xffF2F2F5),size: 20,)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Container(
              height: 67,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.fromBorderSide(BorderSide(color: Color(0xffF2F2F5))),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    SizedBox(width: 14,),
                    Image(image: AssetImage('assets/images/main_screens/schedule/list.png')),
                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Insurance Include',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                        Text('Lorem ipsum dolor sit amet',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Color(0xffF2F2F5),size: 20,)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Container(
              height: 67,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.fromBorderSide(BorderSide(color: Color(0xffF2F2F5))),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    SizedBox(width: 14,),
                    Image(image: AssetImage('assets/images/main_screens/schedule/location.png')),
                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Current Location',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                        Text('Lorem ipsum dolor sit amet',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Color(0xffF2F2F5),size: 20,)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 80),
            Button(text: 'Join the meeting room',onTapped: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Message(),));
            },),
            SizedBox(height: 10),
            Center(child: TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Cancel',style: TextStyle(fontSize: 16,color: MyColors.redShadeTwo),))),
          ],
        ),
      ),
    );
  }
}
