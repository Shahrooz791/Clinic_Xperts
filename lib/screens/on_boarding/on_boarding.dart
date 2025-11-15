import 'package:clinic_xpert/screens/sign_in/sign_in.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var bgImage = [
    'assets/images/onBoarding/bg-left.png',
    'assets/images/onBoarding/bg-center.png',
    'assets/images/onBoarding/bg-right.png',
  ];

  var text = [
    'Best Application to maintain your health',
    'Millions of doctors are waiting for helping you',
    'Trusted app for being your health assistant',
  ];

  var button = ['Next', 'Next', 'Get Started'];

  PageController controller = PageController();

  int indexTwo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            physics: NeverScrollableScrollPhysics(),
            itemCount: bgImage.length,
            onPageChanged: (index) {
              setState(() {
                indexTwo = index;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image(image: AssetImage(bgImage[index])),
                  SizedBox(height: 24),
                  SizedBox(
                    height: 274,
                    width: 279,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          text[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            letterSpacing: 0,
                            color: MyColors.blackShadeOne,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem . ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            letterSpacing: 0,
                            color: MyColors.greyShade,
                          ),
                        ),
                        SizedBox(height: 56),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 47),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: MyColors.blueShade,
                ),
                onPressed: () {
                  if (indexTwo == 2) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  }
                  controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.linear,
                  );
                },
                child: Text(
                  button[indexTwo],
                  style: TextStyle(
                    color: MyColors.whiteShadeThree,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}