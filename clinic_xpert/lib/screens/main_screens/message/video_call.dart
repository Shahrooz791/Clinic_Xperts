import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class VideoCall extends StatefulWidget {
  const VideoCall({super.key});

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteShadeTwo,
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Image(image: AssetImage('assets/images/main_screens/message/video-call.png'))),
          Padding(
            padding: const EdgeInsets.only(top: 53,left: 23),
            child: ArrowButton(bgColor: MyColors.whiteShadeTwo,onTapped: (){
              Navigator.pop(context);
            },),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 47,right: 26),
              child: Image(image: AssetImage('assets/images/main_screens/message/video-call-girl.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 168),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle,color: MyColors.darRed,size: 15,),
                    SizedBox(width: 8,),
                    Text('6.48',style: TextStyle(color: MyColors.whiteShadeTwo,fontSize: 14),),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 79),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(70, 70),
                    backgroundColor: MyColors.whiteShadeTwo,
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.call_end,color: MyColors.darRed,size: 30,)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 44,right: 240),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(54, 54),
                    backgroundColor: MyColors.whiteShadeTwo,
                  ),
                  onPressed: (){}, icon: Icon(Icons.video_call,color: MyColors.blueShade,size: 30,)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 44,left: 240),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(54, 54),
                    backgroundColor: MyColors.whiteShadeTwo,
                  ),
                  onPressed: (){}, icon: Icon(Icons.mic,color: MyColors.blueShade,size: 30,)),
            ),
          ),
        ],
      ),
    );
  }
}
