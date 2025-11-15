import 'dart:io';

import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/input_box.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  File? image;

  final picker = ImagePicker();

  Future getImage() async {
     final pickerImage = await picker.pickImage(source: ImageSource.gallery);

     setState(() {
       if(pickerImage != null){
         image = File(pickerImage.path);
       }
     });

  }

  int check = 0;
  int a = 0;

  String date = 'Date of Birth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteShadeTwo,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 53),
              Row(
                children: [
                  ArrowButton(
                    size: Size(40, 40),
                    onTapped: () => Navigator.pop(context),
                  ),
                  SizedBox(width: 71),
                  Text(
                    'My Profile',
                    style: TextStyle(
                      fontSize: 18,
                      color: MyColors.blackShadeOne,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: image == null ? AssetImage(
                      'assets/images/main_screens/profile/profile-image.png',
                    ) : FileImage(image!),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 55),
                    child: IconButton(
                      onPressed: () {
                        getImage();
                      },
                      icon: Icon(
                        Icons.edit_square,
                        color: MyColors.blackShadeOne,
                      ),
                    ),
                  ),
                ],
              ),
              InputBox(topText: 'Full Name', hintText: 'Brooklyn Simmons'),
              SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date of Birth',
                    style: TextStyle(
                      fontSize: 14,
                      color: MyColors.greyShadeThree,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 52,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.whiteShadeThree,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 16),
                        Text(
                          date,
                          style: TextStyle(
                            color: MyColors.greyShade,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 150),
                        IconButton(
                          onPressed: () async {
                            DateTime? dt = await showDatePicker(
                              context: context,
                              firstDate: DateTime(1997),
                              lastDate: DateTime(2030),
                              initialDate: DateTime.now(),
                            );
                            setState(() {
                              if (dt != null) {
                                date = '${dt.month}-${dt.day}-${dt.year}';
                              }
                            });
                          },
                          icon: Icon(
                            Icons.calendar_month,
                            color: MyColors.blackShadeOne,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Gender',
                  style: TextStyle(
                    fontSize: 14,
                    color: MyColors.greyShadeThree,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeColor: MyColors.greenShade,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(30),
                        ),
                        side: BorderSide(
                          style: BorderStyle.solid,
                          color: MyColors.greyShadeTwo,
                          width: 1,
                        ),
                        value: check == 1 ? true : false,
                        onChanged: (value) {
                          setState(() {
                            setState(() {
                              check = 1;
                            });
                          });
                        },
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          fontSize: 16,
                          color: MyColors.blackShadeOne,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeColor: MyColors.greenShade,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(30),
                        ),
                        side: BorderSide(
                          style: BorderStyle.solid,
                          color: MyColors.greyShadeTwo,
                          width: 1,
                        ),
                        value: check == 2 ? true : false,
                        onChanged: (value) {
                          setState(() {
                            check = 2;
                          });
                        },
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                          fontSize: 16,
                          color: MyColors.blackShadeOne,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              InputBox(topText: 'Phone Number', hintText: '+1 3712 3789'),
              SizedBox(height: 24),
              InputBox(topText: 'Email', hintText: 'Brooklynsimmons@gmail.com'),
              SizedBox(height: 60),
              Button(
                text: a == 1 ? 'Save Change' : 'Edit',
                onTapped: () {
                  setState(() {
                    a++;
                  });
                  if (a == 2) {
                    Navigator.pop(context);
                  }
                },
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
