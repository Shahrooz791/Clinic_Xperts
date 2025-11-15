import 'package:clinic_xpert/screens/main_screens/bottom_navigation_bar.dart';
import 'package:clinic_xpert/screens/sign_in/sign_up.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteShadeTwo,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 52),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: ArrowButton(onTapped: (){
                Navigator.pop(context);
              },),
            ),
            SizedBox(height: 32,),
            Text('Enter OTP',style: TextStyle(fontSize: 24,color: MyColors.blackShadeOne,fontWeight: FontWeight.bold),),
            SizedBox(height: 12,),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(text: 'We have just sent you 4 digit code via your email ',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree)),
                  TextSpan(text: 'example@gmail.com',style: TextStyle(fontSize: 14,color: MyColors.blackShadeOne)),
                ])),
            SizedBox(height: 32,),
            PinCodeTextField(
              maxLength: 4,
              wrapAlignment: WrapAlignment.spaceBetween,
              hasTextBorderColor: MyColors.blueShade,
              textDirection: TextDirection.ltr,
              keyboardType: TextInputType.number,
              controller: controller,
              hasError: false,
              hideCharacter:  false,
              pinBoxColor: MyColors.whiteShadeThree,
              errorBorderColor: MyColors.blueShade,
              pinBoxRadius: 70,
              pinBoxHeight: 70,
              defaultBorderColor: Colors.transparent,
            ),
            SizedBox(height: 40,),
            Button(text: 'Continue',onTapped: (){
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Container(
                      height: 268,
                      width: 294,
                      decoration: BoxDecoration(
                        color: MyColors.whiteShadeTwo,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                              textWidthBasis: TextWidthBasis.longestLine,
                                textAlign: TextAlign.center,
                                text: TextSpan(children: [
                                  TextSpan(text: 'I agree to the ',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree)),
                                  TextSpan(text: 'Terms of Service ',style: TextStyle(fontSize: 14,color: MyColors.blackShadeOne)),
                                  TextSpan(text: 'and ',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree)),
                                  TextSpan(text: 'Conditions',style: TextStyle(fontSize: 14,color: MyColors.blackShadeOne)),
                                  TextSpan(text: ' of Use including consent to electronic communications and I affirm that the information provided is my own.',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree)),
                                ])),
                            SizedBox(height: 32,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    height: 46,
                                    width: 115,
                                    child: ElevatedButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          shadowColor: Colors.transparent
                                        ),
                                        onPressed: (){
                                          Navigator.pop(context);
                                        }, child: Text('Disagree',style: TextStyle(color: MyColors.redShade,fontSize: 14),))),
                                SizedBox(
                                    height: 46,
                                    width: 115,
                                    child: Button(text: 'Agree',onTapped: (){
                                      Navigator.of(context).pop();
                                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => BottomNavigationBarss(),), (route) => false);
                                    },)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },),
            SizedBox(height: 16,),
            Center(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(text: 'Didn’t receive code? ',style: TextStyle(fontSize: 16,color: MyColors.greyShadeThree)),
                    TextSpan(text: 'Resend Code',style: TextStyle(fontSize: 16,color: MyColors.blueShade)),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
