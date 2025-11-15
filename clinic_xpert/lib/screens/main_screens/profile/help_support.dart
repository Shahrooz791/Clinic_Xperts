import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/input_box.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({super.key});

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {

  int a = 2;

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
                SizedBox(width: 39),
                Text(
                  'Help and Support',
                  style: TextStyle(fontSize: 18, color: MyColors.blackShadeOne),
                ),
              ],
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: MyColors.greyShade,
                  ),
                  filled: true,
                  fillColor: MyColors.whiteShadeThree,
                  hintText: 'Search Message...',
                  hintStyle: TextStyle(fontSize: 16, color: MyColors.greyShade),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Lorem ipsum dolor sit amet',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                    IconButton(onPressed: (){
                      setState(() {
                        a = 1;
                      });
                    }, icon: a == 1 ? Icon(Icons.keyboard_arrow_up) : Icon(Icons.keyboard_arrow_down)),
                  ],
                ),
                a == 1 ? Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',style: TextStyle(fontSize: 14,color: MyColors.greyShadeFive),) : Text(''),
                Divider(color: MyColors.greyShadeTwo,)
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Lorem ipsum dolor sit amet',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                    IconButton(onPressed: (){
                      setState(() {
                        a = 2;
                      });
                    }, icon: a == 2 ? Icon(Icons.keyboard_arrow_up) : Icon(Icons.keyboard_arrow_down)),
                  ],
                ),
                a == 2 ? Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',style: TextStyle(fontSize: 14,color: MyColors.greyShadeFive),) : Text(''),
                Divider(color: MyColors.greyShadeTwo,)
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Lorem ipsum dolor sit amet',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                    IconButton(onPressed: (){
                      setState(() {
                        a = 3;
                      });
                    }, icon: a == 3 ? Icon(Icons.keyboard_arrow_up) : Icon(Icons.keyboard_arrow_down)),
                  ],
                ),
                a == 3 ? Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',style: TextStyle(fontSize: 14,color: MyColors.greyShadeFive),) : Text(''),
                Divider(color: MyColors.greyShadeTwo,)
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Lorem ipsum dolor sit amet',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                    IconButton(onPressed: (){
                      setState(() {
                        a = 4;
                      });
                    }, icon: a == 4 ? Icon(Icons.keyboard_arrow_up) : Icon(Icons.keyboard_arrow_down)),
                  ],
                ),
                a == 4 ? Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',style: TextStyle(fontSize: 14,color: MyColors.greyShadeFive),) : Text(''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
