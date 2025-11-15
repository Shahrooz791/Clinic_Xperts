import 'package:clinic_xpert/screens/main_screens/home/notifications.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteShadeTwo,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi, Jane',style: TextStyle(fontSize: 18,color: MyColors.blackShadeOne),),
                    Text('How are you feeling today?',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),),
                  ],
                ),
                Row(
                  children: [
                    ArrowButton(icons: Icons.notifications_sharp,onTapped: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications(),));
                    },),
                    ArrowButton(icons: Icons.search),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25,),
            Card(
              elevation: 30,
              child: Container(
                height: 141,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: MyColors.blueShade,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24,left: 20),
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Image(image: AssetImage('assets/images/main_screens/home/doctor.png'))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24,left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('dr. Ruben Dorwart',style: TextStyle(fontSize: 16,color: MyColors.whiteShadeTwo),),
                          Text('Dental Specialist',style: TextStyle(fontSize: 12,color: MyColors.greyShadeFour),),
                          SizedBox(height: 17,),
                          Container(
                            height: 28,
                            width: 210,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xff1717251F),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.calendar_month,color: MyColors.whiteShadeTwo,size: 17,),
                                Text('Today',style: TextStyle(fontSize: 12,color: MyColors.whiteShadeTwo),),
                                SizedBox(width: 12,),
                                Icon(Icons.access_time_rounded,color: MyColors.whiteShadeTwo,size: 17,),
                                Text('14:30 - 15:30 AM  ',style: TextStyle(fontSize: 12,color: MyColors.whiteShadeTwo),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24,),
            Text('Health Needs',style: TextStyle(fontSize: 18,color: MyColors.blackShadeOne),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                menu('health', 'Appoitment',(){}),
                menu('homes', 'Hospital',(){}),
                menu('virus', 'Covid-19',(){}),
                menu('more', 'More',(){
                  showModalBottomSheet(
                    backgroundColor: MyColors.whiteShadeTwo,
                    context: context, builder: (context) {
                    return SizedBox(
                      height: 368,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Health Needs',style: TextStyle(fontSize: 18,color: MyColors.blackShadeOne),),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                menu('health', 'Appoitment',(){}),
                                menu('homes', 'Hospital',(){}),
                                menu('virus', 'Covid-19',(){}),
                                menu('pharmacy', 'Pharmacy',(){}),
                              ],
                            ),
                            SizedBox(height: 24,),
                            Text('Specialised Care',style: TextStyle(fontSize: 18,color: MyColors.blackShadeOne),),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                menu('diabetes', 'Diabetes',(){}),
                                menu('heartCare', 'Heart Care',(){}),
                                menu('dental', 'Dental',(){}),
                                menu('insured', 'Insured',(){}),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },);
                }),
              ],
            ),
            SizedBox(height: 24,),
            Text('Nearby Doctor',style: TextStyle(fontSize: 18,color: MyColors.blackShadeOne),),
            SizedBox(height: 16,),
            Row(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Image(image: AssetImage('assets/images/main_screens/home/ladyOne.png'))),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('dr. Skylar Korsgaard',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                      Text('General Practitioner',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),),
                      SizedBox(height: 12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star,color: MyColors.yelloShade,size: 17,),
                          SizedBox(width: 2,),
                          Text('4.0',style: TextStyle(fontSize: 12,color: MyColors.blackShadeOne),),
                          SizedBox(width: 10,),
                          Text('(191 Reviews)',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
            Row(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Image(image: AssetImage('assets/images/main_screens/home/ladyTwo.png'))),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('dr. Adison Schleifer',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                      Text('General Practitioner',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),),
                      SizedBox(height: 12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star,color: MyColors.yelloShade,size: 17,),
                          SizedBox(width: 2,),
                          Text('4.0',style: TextStyle(fontSize: 12,color: MyColors.blackShadeOne),),
                          SizedBox(width: 10,),
                          Text('(195 Reviews)',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget menu(String image,String name,VoidCallback onTapped){
    return InkWell(
      onTap: onTapped,
      child: Column(
        children: [
          Image(image: AssetImage('assets/images/main_screens/home/$image.png')),
          SizedBox(height: 11,),
          Text(name,style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),),
        ],
      ),
    );
  }
}
