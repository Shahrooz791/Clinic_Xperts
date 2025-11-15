import 'package:clinic_xpert/screens/main_screens/schedule/book_apponment.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/input_box.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Appoinment extends StatefulWidget {
  const Appoinment({super.key});

  @override
  State<Appoinment> createState() => _AppoinmentState();
}

class _AppoinmentState extends State<Appoinment> {

  TextEditingController dateCtrl = TextEditingController();

  String hint = '';
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
                    size:  Size(40, 40),
                    onTapped: () => Navigator.pop(context),
                  ),
                  SizedBox(width: 57),
                  Text(
                    'Detail Doctor',
                    style: TextStyle(fontSize: 18, color: MyColors.blackShadeOne),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              InputBox(topText: 'Full Name', hintText: 'Brooklyn Simmons'),
              SizedBox(height: 24,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date of Birth',
                    style:  TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      letterSpacing: 0,
                      color: MyColors.greyShadeThree,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    height: 52,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: MyColors.whiteShadeThree,
                    ),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.
                          only(left: 16),
                          child: Text('$hint',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                        ),
                        IconButton(onPressed: () async{
                          DateTime? datePicked = await showDatePicker(
                            initialDate: DateTime.now(),
                              context: context, firstDate: DateTime(2000), lastDate: DateTime(2026),
                          );
                          if (datePicked != null) {
                            setState(() {
                              hint = DateFormat('dd MMM yyyy').format(datePicked);
                            });
                          }
                        }, icon: Icon(Icons.calendar_month,color: MyColors.blueShade,)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Text('Gender',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree),),
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
                        side: BorderSide(style: BorderStyle.solid,color: MyColors.greyShadeTwo,width: 1),
                        value: check == 1 ? true : false, onChanged: (value){
                        setState(() {
                          setState(() {
                            check = 1;
                          });
                        });
                      },),
                      Text('Male',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
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
                        side: BorderSide(style: BorderStyle.solid,color: MyColors.greyShadeTwo,width: 1),
                        value: check == 2 ? true : false, onChanged: (value){
                        setState(() {
                          check = 2;
                        });
                      },),
                      Text('Female',style: TextStyle(fontSize: 16,color: MyColors.blackShadeOne),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Text('Problem Description',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree),),
              SizedBox(height: 8,),
              SizedBox(
                width: double.infinity,
                height: 132,
                child: TextFormField(
                  minLines: 6,
                  maxLines: 10,
                  decoration: InputDecoration(
                    helperMaxLines: 5,
                    hintMaxLines: 7,
                    maintainHintSize: true,
                    errorMaxLines: 10,
                    hintText: 'Description your problem..',
                    hintStyle: TextStyle(fontSize: 16,color: MyColors.greyShade),
                    fillColor: MyColors.whiteShadeThree,
                    filled: true,
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
              Padding(
                padding: const EdgeInsets.only(top: 132),
                child: Button(text: 'Continue',onTapped: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BookApponment(),));
                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
