import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteShadeTwo,
      body: SingleChildScrollView(
        child: Padding(
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
                  SizedBox(width: 64),
                  Text(
                    'Notification',
                    style: TextStyle(fontSize: 18, color: MyColors.blackShadeOne),
                  ),
                ],
              ),
              SizedBox(height: 24),
              not('Today'),
              SizedBox(height: 16),
              not('Yesterday'),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
  Widget not(String topText){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(topText,style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
        SizedBox(height: 32),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 35,right: 12),
              child: Image(image: AssetImage('assets/images/main_screens/home/notification-avatar.png')),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 260,
                  child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(children: [
                        TextSpan(text: 'dr. Chance Septimus just ',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 14,fontWeight: FontWeight.w500)),
                        TextSpan(text: 'Approved ',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 14,fontWeight: FontWeight.w700)),
                        TextSpan(text: 'for the appointment on ',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 14,fontWeight: FontWeight.w500)),
                        TextSpan(text: '22nd June 2022 at 03.00 PM ',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 14,fontWeight: FontWeight.w700)),
                      ])),
                ),
                SizedBox(height: 8,),
                Text('2 hours Ago',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),),
              ],
            ),
          ],
        ),
        SizedBox(height: 12),
        Center(child: SizedBox(width: 274,child: Divider(),)),
        SizedBox(height: 12),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25,right: 12),
              child: Image(image: AssetImage('assets/images/main_screens/home/notification-avatar.png')),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 260,
                  child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(children: [
                        TextSpan(text: 'dr. Chance Septimus ',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 14,fontWeight: FontWeight.w500)),
                        TextSpan(text: 'Replayed ',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 14,fontWeight: FontWeight.w700)),
                        TextSpan(text: 'your message .',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 14,fontWeight: FontWeight.w500)),
                      ])),
                ),
                SizedBox(height: 8,),
                Text('2 hours Ago',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),),
              ],
            ),
          ],
        ),
        SizedBox(height: 12),
        Center(child: SizedBox(width: 274,child: Divider(),)),
        SizedBox(height: 12),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25,),
              child: IconButton(
                  style: TextButton.styleFrom(
                    backgroundColor: MyColors.whiteShadeThree,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: (){}, icon: Icon(Icons.calendar_month,color: MyColors.blueShade,)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 260,
                  child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(children: [
                        TextSpan(text: 'Be Ready, ',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 14,fontWeight: FontWeight.w700)),
                        TextSpan(text: 'Your appointment will be held after 2 minutes !',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 14,fontWeight: FontWeight.w500)),
                      ])),
                ),
                SizedBox(height: 8,),
                Text('2 hours Ago',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
