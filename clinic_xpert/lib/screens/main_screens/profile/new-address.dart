import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/input_box.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class NewAddress extends StatefulWidget {
  const NewAddress({super.key});

  @override
  State<NewAddress> createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {
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
                  SizedBox(width: 39,),
                  Text(
                    'Add New Address',
                    style: TextStyle(fontSize: 18, color: MyColors.blackShadeOne),
                  ),
                ],
              ),
              SizedBox(height: 24),
              InputBox(topText: 'Full Name', hintText: 'Enter Full Name'),
              SizedBox(height: 24),
              InputBox(topText: 'Country', hintText: 'Select Country',suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down,color: MyColors.blackShadeOne ,)) ,),
              SizedBox(height: 24),
              InputBox(topText: 'City', hintText: 'Select City',suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down,color: MyColors.blackShadeOne ,)),),
              SizedBox(height: 24),
              InputBox(topText: 'State', hintText: 'Select State',suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down,color: MyColors.blackShadeOne ,)),),
              SizedBox(height: 24),
              InputBox(topText: 'Zip Code', hintText: 'Enter Zip Code'),
              SizedBox(height: 24),
              Text('Detail Address',style: TextStyle(fontSize: 14,color: MyColors.greyShadeThree),),
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
                    hintText: 'Enter Your Address',
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
              SizedBox(height: 32,),
              Button(text: 'Save Address',onTapped: (){
                Navigator.pop(context);
              },bgColor: Color(0xffECF1F6),textStyle: TextStyle(color: MyColors.greyShade,fontSize: 16)),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
