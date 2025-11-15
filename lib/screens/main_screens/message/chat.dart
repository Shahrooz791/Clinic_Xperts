import 'package:clinic_xpert/screens/main_screens/message/video_call.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/input_box.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteShadeTwo,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 52,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ArrowButton(
                    onTapped: (){
                      Navigator.pop(context);
                    },
                  ),
                  Text('dr. Chance Septimus',style: TextStyle(fontSize: 18,color: MyColors.blackShadeOne),),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.fromBorderSide(BorderSide(color: MyColors.greyShadeTwo)),
                    ),
                    child: PopupMenuButton(
                      color: MyColors.whiteShadeTwo,
                      borderRadius: BorderRadius.circular(20),
                      itemBuilder: (context)  => [
                      PopupMenuItem(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => VideoCall(),));
                        },
                          child: Row(children: [
                        Icon(Icons.phone_outlined,color: MyColors.blackShadeOne,size: 17,),
                        SizedBox(width: 8,),
                        Text('Voice Call',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 14),),
                      ],)),
                        PopupMenuItem(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VideoCall(),));
                            },
                            child: Row(children: [
                          Icon(Icons.video_call,color: MyColors.blackShadeOne,size: 17,),
                          SizedBox(width: 8,),
                          Text('Video Call',style: TextStyle(color: MyColors.blackShadeOne,fontSize: 14),),
                        ],)),
                    ],),
                  )
                ],
              ),
              SizedBox(height: 32,),
              chat(),
              SizedBox(height: 24,),
              chat(),
              SizedBox(height: 24,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 68,
                        width: 267,
                        decoration: BoxDecoration(
                          color: MyColors.whiteShadeThree,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Center(child: Text('Lorem ipsum dolor sit et, consectetur adipiscing.',style: TextStyle(fontSize: 14,color: MyColors.blackShadeOne),)),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text('Jul 19, 2022',style: TextStyle(fontSize: 12,color: MyColors.greyShade),),
                    ],
                  ),
                  SizedBox(width: 12,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: Image(image: AssetImage('assets/images/main_screens/message/chat-client.png')),
                  ),
                ],
              ),
              SizedBox(height: 237,),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: MyColors.whiteShadeThree,
                    prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.link,color: MyColors.blueShade)),
                    hintText: 'Message',
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(style: TextButton.styleFrom(
                          backgroundColor: MyColors.blueShade,
                        ),onPressed: (){}, icon: Icon(Icons.mic,color: MyColors.whiteShadeTwo))
                      ],
                    ),
                    hintStyle: TextStyle(fontSize: 12, color: MyColors.greyShadeFive),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.greyShadeTwo),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.greyShadeTwo),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget chat(){
    return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Image(image: AssetImage('assets/images/main_screens/message/chat-docotor.png')),
        ),
        SizedBox(width: 12,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 68,
              width: 267,
              decoration: BoxDecoration(
                color: MyColors.whiteShadeThree,
                borderRadius: BorderRadius.only(topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Center(child: Text('Lorem ipsum dolor sit et, consectetur adipiscing.',style: TextStyle(fontSize: 14,color: MyColors.blackShadeOne),)),
              ),
            ),
            SizedBox(height: 8,),
            Text('Jul 19, 2022',style: TextStyle(fontSize: 12,color: MyColors.greyShade),),
          ],
        ),
      ],
    );
  }
}
