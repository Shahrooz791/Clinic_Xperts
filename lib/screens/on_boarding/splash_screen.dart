import 'dart:async';
import 'package:clinic_xpert/screens/on_boarding/on_boarding.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/input_box.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blueShade,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image(image: AssetImage('assets/images/onBoarding/BG.png')),
                Positioned(
                  top: 24,
                  bottom: 24,
                  right: 24,
                  left: 24,
                  child: SvgPicture.asset(
                    'assets/images/onBoarding/heart.svg',
                    height: 56,
                    width: 56,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              'Clinic Xperts',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                letterSpacing: 0,
                color: MyColors.whiteShadeThree,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
