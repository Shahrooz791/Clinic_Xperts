import 'package:clinic_xpert/screens/main_screens/bottom_navigation_bar.dart';
import 'package:clinic_xpert/screens/sign_in/forget_pass.dart';
import 'package:clinic_xpert/screens/sign_in/sign_up.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/input_box.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  bool bl = false;
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                  },
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/sign_in/arrow-bg.png'),fit: BoxFit.fill),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.arrow_back,color: MyColors.whiteShadeTwo,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 86),
                  child: Text('Sign In',style: TextStyle(fontSize: 18,color: MyColors.whiteShadeTwo),),
                ),
              ],
            ),
          ),
          SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text('Hi, Welcome Back! 👋',style: TextStyle(fontSize: 24,color: MyColors.whiteShadeTwo),),
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
                    InputBox(topText: 'Email Address', hintText: 'Enter your email address'),
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
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              activeColor: MyColors.blueShade,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadiusGeometry.circular(30),
                             ),
                              side: BorderSide(style: BorderStyle.solid,color: MyColors.greyShadeTwo,width: 1),
                              value: check, onChanged: (value){
                              setState(() {
                                if(check == true){
                                  check = false;
                                }else{
                                  check = true;
                                }
                              });
                            },),
                            Text('Remember Me',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree),)
                          ],
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPass(),));
                        }, child: Text('Forgot Password',style: TextStyle(color: MyColors.redShade,fontSize: 14),))
                      ],
                    ),
                    SizedBox(height: 22,),
                    Button(text: 'Sign In',onTapped: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigationBarss(),));
                    },),
                    SizedBox(height: 10,),
                    Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                        },
                        child: RichText(
                          textAlign: TextAlign.center,
                            text: TextSpan(children: [
                          TextSpan(text: 'Don’t have an account? ',style: TextStyle(fontSize: 16,color: MyColors.greyShadeThree)),
                          TextSpan(text: 'Sign Up',style: TextStyle(fontSize: 16,color: MyColors.blueShade)),
                        ])),
                      ),
                    ),
                    SizedBox(height: 24,),
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
