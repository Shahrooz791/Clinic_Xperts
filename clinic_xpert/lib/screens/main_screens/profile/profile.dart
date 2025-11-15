import 'package:clinic_xpert/screens/main_screens/home/notifications.dart';
import 'package:clinic_xpert/screens/main_screens/profile/address.dart';
import 'package:clinic_xpert/screens/main_screens/profile/edit_profile.dart';
import 'package:clinic_xpert/screens/main_screens/profile/help_support.dart';
import 'package:clinic_xpert/screens/main_screens/profile/language.dart';
import 'package:clinic_xpert/screens/main_screens/profile/payment.dart';
import 'package:clinic_xpert/screens/sign_in/forget_pass.dart';
import 'package:clinic_xpert/screens/sign_in/sign_in.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                  SizedBox(width: 87),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 18,
                      color: MyColors.blackShadeOne,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage(
                      'assets/images/main_screens/profile/profile-image.png',
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brooklyn Simmons',
                        style: TextStyle(
                          color: MyColors.blackShadeOne,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '@Broklyn',
                        style: TextStyle(
                          fontSize: 14,
                          color: MyColors.greyShadeSix,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 37),
                  IconButton(
                    style: TextButton.styleFrom(
                      side: BorderSide(color: MyColors.greyShadeTwo),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfile()),
                      );
                    },
                    icon: Icon(Icons.edit_square),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  info('Age', '24 years'),
                  info('Height', '165 cm'),
                  info('Weight', '56 kg'),
                ],
              ),
              SizedBox(height: 32),
              btn(
                Icons.location_on_outlined,
                Icons.wallet_rounded,
                'Personal Info',
                'My Address',
                'Payment Method',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Address()),
                  );
                },
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Payment()),
                  );
                },
              ),
              SizedBox(height: 24),
              btn(
                Icons.lock,
                Icons.lock_open,
                'Security',
                'Change Password',
                'Forgot Password',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgetPass()),
                  );
                },
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgetPass()),
                  );
                },
              ),
              SizedBox(height: 24),
              btn(
                Icons.notifications_sharp,
                Icons.language,
                'General',
                'Notification',
                'Languages',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notifications()),
                  );
                },
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Language()),
                  );
                },
              ),
              SizedBox(height: 12),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelpSupport()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.info, color: MyColors.blackShadeOne),
                    SizedBox(width: 16),
                    Text(
                      'Help and Support',
                      style: TextStyle(
                        fontSize: 16,
                        color: MyColors.blackShadeOne,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                width: 287,
                child: Divider(color: MyColors.greyShadeTwo),
              ),
              SizedBox(height: 20),
              Center(
                child: TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: Container(
                            height: 266,
                            width: 312,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: MyColors.whiteShadeTwo,
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 14),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: MyColors.whiteShadeThree,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      color: MyColors.blackShadeOne,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 55,
                                  ),
                                  child: Text(
                                    'Are you sure want to Log Out?',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: MyColors.blackShadeOne,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 22),
                                SizedBox(
                                  height: 46,
                                  width: 190,
                                  child: Button(
                                    text: 'Cancel',
                                    onTapped: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),

                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignIn(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Log Out',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: MyColors.redShadeTwo,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 16, color: MyColors.redShadeTwo),
                  ),
                ),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget info(String top, String bottom) {
    return Container(
      height: 62,
      width: 101,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: MyColors.whiteShadeThree,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(top, style: TextStyle(fontSize: 12, color: MyColors.greyShade)),
          SizedBox(height: 4),
          Text(
            bottom,
            style: TextStyle(fontSize: 14, color: MyColors.blackShadeOne),
          ),
        ],
      ),
    );
  }

  Widget btn(
    IconData iconOne,
    IconData iconTwo,
    String topText,
    String nameOne,
    String nameTwo,
    VoidCallback onTappedOne,
    VoidCallback onTappedTwo,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText,
          style: TextStyle(fontSize: 14, color: MyColors.greyShade),
        ),
        SizedBox(height: 24),
        InkWell(
          onTap: onTappedOne,
          child: Row(
            children: [
              Icon(iconOne, color: MyColors.blackShadeOne),
              SizedBox(width: 16),
              Text(
                nameOne,
                style: TextStyle(fontSize: 16, color: MyColors.blackShadeOne),
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        SizedBox(width: 287, child: Divider(color: MyColors.greyShadeTwo)),
        SizedBox(height: 12),
        InkWell(
          onTap: onTappedTwo,
          child: Row(
            children: [
              Icon(iconTwo, color: MyColors.blackShadeOne),
              SizedBox(width: 16),
              Text(
                nameTwo,
                style: TextStyle(fontSize: 16, color: MyColors.blackShadeOne),
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        SizedBox(width: 287, child: Divider(color: MyColors.greyShadeTwo)),
      ],
    );
  }
}
