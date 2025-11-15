import 'package:clinic_xpert/screens/main_screens/schedule/detail_doctor.dart';
import 'package:flutter/material.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  int a = 1;

  var doctorImage = [
    'assets/images/main_screens/schedule/doctors.png',
    'assets/images/main_screens/schedule/ladyOnes.png',
    'assets/images/main_screens/schedule/ladyTwos.png',
    'assets/images/main_screens/schedule/doctorTwo.png'
  ];

  List doctorName = [
    'dr. Ruben Dorwart',
    'dr. Skylar Korsgaard',
    'dr. Adison Schleifer',
    'dr. Adison Schleifer',
  ];

  List doctorBio = [
    'Dental Specialist',
    'General Practitioner',
    'General Practitioner',
    'General Practitioner',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteShadeTwo,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
             SizedBox(height: 63),
            Row(
              children: [
                ArrowButton(
                  size:  Size(40, 40),
                  onTapped: () => Navigator.pop(context),
                ),
                 SizedBox(width: 74),
                Text(
                  'Schedule',
                  style: TextStyle(fontSize: 18, color: MyColors.blackShadeOne),
                ),
              ],
            ),
             SizedBox(height: 35),
            Container(
              height: 38,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: MyColors.greyShadeTwo),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    text: 'Upcoming',
                    width: 100,
                    textStyle: TextStyle(
                      fontSize: 11,
                      color: a == 1
                          ? MyColors.whiteShadeTwo
                          : MyColors.greyShadeThree,
                    ),
                    bgColor: a == 1
                        ? MyColors.blueShade
                        : MyColors.whiteShadeTwo,
                    onTapped: () {
                      setState(() {
                        a = 1;
                      });
                    },
                    shadowColor: Colors.transparent,
                  ),
                  Button(
                    text: 'Complete',
                    width: 100,
                    textStyle: TextStyle(
                      fontSize: 11,
                      color: a == 2
                          ? MyColors.whiteShadeTwo
                          : MyColors.greyShadeThree,
                    ),
                    bgColor: a == 2
                        ? MyColors.blueShade
                        : MyColors.whiteShadeTwo,
                    onTapped: () {
                      setState(() {
                        a = 2;
                      });
                    },
                    shadowColor: Colors.transparent,
                  ),
                  Button(
                    text: 'Result',
                    width: 100,
                    textStyle: TextStyle(
                      fontSize: 11,
                      color: a == 3
                          ? MyColors.whiteShadeTwo
                          : MyColors.greyShadeThree,
                    ),
                    bgColor: a == 3
                        ? MyColors.blueShade
                        : MyColors.whiteShadeTwo,
                    onTapped: () {
                      setState(() {
                        a = 3;
                      });
                    },
                    shadowColor: Colors.transparent,
                  ),
                ],
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: a - 1,
                children:  [
                  Expanded(child:
                  ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailDoctor(),));
                        },
                        child: Container(
                          height: 185,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: MyColors.whiteShadeThree
                          ),
                          child:  Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 24,left: 20),
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Image(image: AssetImage('${doctorImage[index]}'))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 24,left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${doctorName[index]}',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                                    Text('${doctorBio[index]}',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),),
                                    SizedBox(height: 17,),
                                    Container(
                                      height: 28,
                                      width: 210,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xffECF1F6),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.calendar_month,color: MyColors.greyShadeFive,size: 17,),
                                          Text('Today',style: TextStyle(fontSize: 12,color: MyColors.greyShadeFive),),
                                          SizedBox(width: 12,),
                                          Icon(Icons.access_time_rounded,color: MyColors.greyShadeFive,size: 17,),
                                          Text('14:30 - 15:30 AM  ',style: TextStyle(fontSize: 12,color: MyColors.greyShadeFive),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 16,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Button(text: 'Cancel',height: 28,width: 99,brColor: MyColors.blueShade,bgColor: Colors.transparent,shadowColor: Colors.transparent,textStyle: TextStyle(color: MyColors.blueShade,fontSize: 12),),
                                        SizedBox(width: 12,),
                                        Button(text: 'Reschedule',height: 29,width: 109,textStyle: TextStyle(fontSize: 11,color: MyColors.whiteShadeTwo),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },)),
                  Expanded(child:
                  ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return  Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailDoctor(),));
                          },
                          child: Container(
                            height: 185,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: MyColors.whiteShadeThree
                            ),
                            child:  Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 20),
                                  child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Image(image: AssetImage('${doctorImage[index]}'))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('${doctorName[index]}',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                                      Text('${doctorBio[index]}',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),),
                                      SizedBox(height: 17,),
                                      Container(
                                        height: 28,
                                        width: 210,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Color(0xffECF1F6),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.calendar_month,color: MyColors.greyShadeFive,size: 17,),
                                            Text('Today',style: TextStyle(fontSize: 12,color: MyColors.greyShadeFive),),
                                            SizedBox(width: 12,),
                                            Icon(Icons.access_time_rounded,color: MyColors.greyShadeFive,size: 17,),
                                            Text('14:30 - 15:30 AM  ',style: TextStyle(fontSize: 12,color: MyColors.greyShadeFive),),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 16,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Button(text: 'Rating',height: 28,width: 99,brColor: MyColors.blueShade,bgColor: Colors.transparent,shadowColor: Colors.transparent,textStyle: TextStyle(color: MyColors.blueShade,fontSize: 12),),
                                          SizedBox(width: 12,),
                                          Button(text: 'Appoitment',height: 29,width: 109,textStyle: TextStyle(fontSize: 11,color: MyColors.whiteShadeTwo),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },)),
                  Expanded(child:
                  ListView.builder(
                    itemCount: doctorImage.length,
                    itemBuilder: (context, index) {
                      return  Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailDoctor(),));
                          },
                          child: Container(
                            height: 141,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: MyColors.whiteShadeThree
                            ),
                            child:  Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 20),
                                  child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Image(image: AssetImage('${doctorImage[index]}'))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 24,left: 12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('${doctorName[index]}',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                                      Text('${doctorBio[index]}',style: TextStyle(fontSize: 12,color: MyColors.greyShadeThree),),
                                      SizedBox(height: 17,),
                                      Container(
                                        height: 28,
                                        width: 210,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Color(0xffECF1F6),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.calendar_month,color: MyColors.greyShadeFive,size: 17,),
                                            Text('Today',style: TextStyle(fontSize: 12,color: MyColors.greyShadeFive),),
                                            SizedBox(width: 12,),
                                            Icon(Icons.access_time_rounded,color: MyColors.greyShadeFive,size: 17,),
                                            Text('14:30 - 15:30 AM  ',style: TextStyle(fontSize: 12,color: MyColors.greyShadeFive),),
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
                      );
                    },)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
