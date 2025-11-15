import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {

  int check = 1;
  var suggest = [
    'English (UK)',
    'English',
    'Bahasa Indonesia',
    'Chineses',
    'Croatian',
    'Czech',
    'Danish',
    'Filipino',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteShadeTwo,
      body: Padding(
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
                SizedBox(width: 73),
                Text(
                  'Language',
                  style: TextStyle(fontSize: 18, color: MyColors.blackShadeOne),
                ),
              ],
            ),
            SizedBox(height: 24),
            Text('Suggested Languages',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
            Expanded(
              child: ListView.separated(itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    setState(() {
                      check = index;
                    });
                  },
                  child: index == 3 ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Other Languages',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Chineses',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                            Checkbox(
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              activeColor: MyColors.greenShade,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(30),
                              ),
                              side: BorderSide(style: BorderStyle.solid,color: MyColors.greyShadeTwo,width: 1),
                              value: check == index ? true : false, onChanged: (vale){

                            },),
                          ],
                        ),
                      ],
                    ),
                  )  : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(suggest[index],style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                        Checkbox(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          activeColor: MyColors.greenShade,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(30),
                          ),
                          side: BorderSide(style: BorderStyle.solid,color: MyColors.greyShadeTwo,width: 1),
                          value: check == index ? true : false, onChanged: (vale){
                          setState(() {
                            check = index;
                          });
                        },),
                      ],
                    ),
                  ),
                );
              }, separatorBuilder: (context, index) {
                return Divider(color: MyColors.greyShadeTwo,);
              }, itemCount: suggest.length),
            ),
          ],
        ),
      ),
    );
  }
}
