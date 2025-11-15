import 'package:clinic_xpert/screens/main_screens/schedule/waiting_room.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class BookApponment extends StatefulWidget {
  const BookApponment({super.key});

  @override
  State<BookApponment> createState() => _BookApponmentState();
}

class _BookApponmentState extends State<BookApponment> {
  int check = 0;

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
                  SizedBox(width: 57),
                  Text(
                    'Detail Doctor',
                    style: TextStyle(
                      fontSize: 18,
                      color: MyColors.blackShadeOne,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Image(
                    image: AssetImage(
                      'assets/images/main_screens/schedule/b-k-doctor.png',
                    ),
                    height: 54,
                    width: 54,
                  ),
                  SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Khaled Abdollah',
                        style: TextStyle(
                          fontSize: 17,
                          color: MyColors.blackShadeOne,
                        ),
                      ),
                      Text(
                        'General Practitioner',
                        style: TextStyle(
                          fontSize: 12,
                          color: MyColors.greyShade,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 25),
                  Icon(
                    Icons.calendar_month,
                    color: MyColors.blueShade,
                    size: 17,
                  ),
                  Text(
                    '3 Years',
                    style: TextStyle(
                      fontSize: 14,
                      color: MyColors.blackShadeOne,
                    ),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.person, color: MyColors.blueShade, size: 17),
                  Text(
                    '1,099 Patients',
                    style: TextStyle(
                      fontSize: 14,
                      color: MyColors.blackShadeOne,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
              Container(
                height: 285,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.fromBorderSide(
                    BorderSide(color: MyColors.greyShadeTwo),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 21),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Cost',
                            style: TextStyle(
                              fontSize: 12,
                              color: MyColors.greyShadeThree,
                            ),
                          ),
                          Text(
                            'IDR. 50.000',
                            style: TextStyle(
                              fontSize: 16,
                              color: MyColors.blackShadeOne,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Divider(color: MyColors.whiteShadeSix),
                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'To Pay',
                            style: TextStyle(
                              fontSize: 12,
                              color: MyColors.greyShadeThree,
                            ),
                          ),
                          Text(
                            'IDR. 50.000',
                            style: TextStyle(
                              fontSize: 16,
                              color: MyColors.blackShadeOne,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 19),
                      Divider(color: MyColors.whiteShadeSix),
                      SizedBox(height: 24),
                      Text(
                        'Promo Code',
                        style: TextStyle(
                          fontSize: 14,
                          color: MyColors.blackShadeOne,
                        ),
                      ),
                      SizedBox(height: 19),
                      SizedBox(
                        width: 282,
                        height: 48,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Promo Code',
                            suffixIcon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Button(
                                    text: 'Apply',
                                    height: 30,
                                    width: 97,
                                  ),
                                ),
                              ],
                            ),
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: MyColors.greyShade,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffEBEBEF)),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffEBEBEF)),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Payment Method',
                style: TextStyle(fontSize: 16, color: MyColors.blackShadeOne),
              ),
              SizedBox(height: 10),
              Container(
                height: 177,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.fromBorderSide(
                    BorderSide(color: MyColors.greyShadeTwo),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 67,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.fromBorderSide(
                            BorderSide(
                              color: check == 1
                                  ? MyColors.blueShade
                                  : MyColors.greyShadeTwo,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 10),
                            Image(
                              image: AssetImage(
                                'assets/images/main_screens/schedule/visa.png',
                              ),
                            ),
                            Text(
                              '•••• •••• •••• 87652',
                              style: TextStyle(
                                fontSize: 12,
                                color: MyColors.blackShadeOne,
                              ),
                            ),
                            Checkbox(
                              checkColor: MyColors.blueShade,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              activeColor: MyColors.blueShade,
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
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                      Container(
                        height: 67,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.fromBorderSide(
                            BorderSide(
                              color: check == 2
                                  ? MyColors.blueShade
                                  : MyColors.greyShadeTwo,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 10),
                            Image(
                              image: AssetImage(
                                'assets/images/main_screens/schedule/mastercard.png',
                              ),
                            ),
                            Text(
                              '•••• •••• •••• 87652',
                              style: TextStyle(
                                fontSize: 12,
                                color: MyColors.blackShadeOne,
                              ),
                            ),
                            Checkbox(
                              checkColor: MyColors.blueShade,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              activeColor: MyColors.blueShade,
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
                                  setState(() {
                                    check = 2;
                                  });
                                });
                              },
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 41),
              Button(text: 'Pay Now',onTapped: (){
                showDialog(context: context, builder: (context) {
                  return Dialog(
                    child: Container(
                      height: 343,
                      width: 272,
                      decoration: BoxDecoration(
                        color: MyColors.whiteShadeTwo,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Column(
                          children: [
                            Image(image: AssetImage('assets/images/sign_in/thumb.png')),
                            SizedBox(height: 24,),
                            Text('Success',textAlign: TextAlign.center,style: TextStyle(fontSize: 24,color: MyColors.blackShadeOne,fontWeight: FontWeight.bold),),
                            SizedBox(height: 12,),
                            Text('Your payment is succesfully sent',textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree)),
                            SizedBox(height: 20,),
                            SizedBox(
                                height: 46,
                                width: 123,
                                child: Button(text: 'Continue',onTapped: (){
                                  Navigator.of(context).pop();
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => WaitingRoom(),));
                                },)),
                          ],
                        ),
                      ),
                    ),
                  );
                },);
              },),
              SizedBox(height: 34),
            ],
          ),
        ),
      ),
    );
  }
}
