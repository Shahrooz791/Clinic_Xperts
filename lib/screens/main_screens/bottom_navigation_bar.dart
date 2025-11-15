import 'package:clinic_xpert/screens/main_screens/home/home.dart';
import 'package:clinic_xpert/screens/main_screens/message/message.dart';
import 'package:clinic_xpert/screens/main_screens/profile/profile.dart';
import 'package:clinic_xpert/screens/main_screens/schedule/schedule.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarss extends StatefulWidget {
  const BottomNavigationBarss({super.key});

  @override
  State<BottomNavigationBarss> createState() => _BottomNavigationBarssState();
}

class _BottomNavigationBarssState extends State<BottomNavigationBarss> {

  var screens = [
    Home(),
    Schedule(),
    Message(),
    Profile(),
  ];

  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: screens[a],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyColors.whiteShadeTwo,
        type: BottomNavigationBarType.fixed,
        currentIndex: a,
        onTap: (value){
          setState(() {
            a = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: MyColors.greyShade),
            label: '',
            activeIcon: Icon(Icons.home, color: MyColors.blueShade),
            backgroundColor: MyColors.whiteShadeTwo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month, color: MyColors.greyShade),
            label: '',
            activeIcon: Icon(Icons.calendar_month, color: MyColors.blueShade),
            backgroundColor: MyColors.whiteShadeTwo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: MyColors.greyShade),
            label: '',
            activeIcon: Icon(Icons.chat, color: MyColors.blueShade),
            backgroundColor: MyColors.whiteShadeTwo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: MyColors.greyShade),
            label: '',
            activeIcon: Icon(Icons.person, color: MyColors.blueShade),
            backgroundColor: MyColors.whiteShadeTwo,
          ),
        ],),
    );
  }
}
