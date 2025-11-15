import 'package:clinic_xpert/screens/sign_in/otp.dart';
import 'package:clinic_xpert/screens/sign_in/sign_in.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/input_box.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool bl = false;
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColors.blueShade,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60,left: 24),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
                  },
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/sign_in/arrow-bg.png'),fit: BoxFit.fill),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.arrow_back,color: MyColors.whiteShadeTwo,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 86),
                  child: Text('Sign Up',style: TextStyle(fontSize: 18,color: MyColors.whiteShadeTwo),),
                ),
              ],
            ),
          ),
          SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text('Create Account',style: TextStyle(fontSize: 24,color: MyColors.whiteShadeTwo),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text('Lorem ipsum dolor sit amet, consectetur',style: TextStyle(fontSize: 14,color: MyColors.whiteShadeOne),),
          ),
          SizedBox(height: 24,),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: MyColors.whiteShadeTwo,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputBox(topText: 'Full Name', hintText: 'Enter your name'),
                    SizedBox(height: 10,),
                    InputBox(topText: 'E-mail', hintText: 'Enter your email'),
                    SizedBox(height: 10,),
                    InputBox(topText: 'Password', hintText: 'Enter your password',
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(bl == true){
                            bl = false;
                          }else{
                            bl = true;
                          }
                        });
                      }, icon: Icon(bl == true ? FontAwesomeIcons.solidEyeSlash : Icons.remove_red_eye,size: bl == true ? 19 : 22,)),obscure: bl,),
                    SizedBox(height: 22,),
                    Button(text: 'Create An Account',onTapped: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Otp(),));
                    },),
                    SizedBox(height: 14,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 62,
                            child: Divider()),
                        SizedBox(width: 12,),
                        Text('Or Sign In with',style: TextStyle(fontSize: 14,color: MyColors.greyShade),),
                        SizedBox(width: 12,),
                        SizedBox(
                            width: 62,
                            child: Divider()),
                      ],
                    ),
                    SizedBox(height: 24,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 48,
                          width: 72,
                          decoration: BoxDecoration(
                              color: MyColors.whiteShadeThree,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: AssetImage('assets/images/sign_in/google.png'))
                          ),
                        ),
                        SizedBox(width: 24,),
                        Container(
                          height: 48,
                          width: 72,
                          decoration: BoxDecoration(
                              color: MyColors.whiteShadeThree,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: AssetImage('assets/images/sign_in/apple.png'))
                          ),
                        ),
                        SizedBox(width: 24,),
                        Container(
                          height: 48,
                          width: 72,
                          decoration: BoxDecoration(
                              color: MyColors.whiteShadeThree,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: AssetImage('assets/images/sign_in/facebook.png'))
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24,),
                    Center(
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(text: 'By signing up you agree to our ',style: TextStyle(fontSize: 16,color: MyColors.greyShadeThree)),
                            TextSpan(text: 'Terms ',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne)),
                            TextSpan(text: 'and ',style: TextStyle(fontSize: 16,color: MyColors.greyShadeThree)),
                            TextSpan(text: 'Conditions of Use',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne)),
                          ])),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
