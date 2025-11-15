import 'package:clinic_xpert/screens/main_screens/message/chat.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/Button.dart';
import 'package:clinic_xpert/ui_helper/custom_widgets/arrow_button.dart';
import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  SlidableController? controller;

  var images = [
    'assets/images/main_screens/message/personOne.png',
    'assets/images/main_screens/message/personTwo.png',
    'assets/images/main_screens/message/personThree.png',
    'assets/images/main_screens/message/personFour.png',
  ];

  var names = ['Esther Howard', 'Wade Warren', 'Chance Septimus', 'Robert Fox'];

  var time = [
    Column(
      children: [
        Text(
          '10:20',
          style: TextStyle(fontSize: 12, color: MyColors.greyShadeThree),
        ),
        Icon(Icons.looks_two_sharp, color: MyColors.blueShade),
      ],
    ),
    Column(
      children: [
        Text(
          '10:20',
          style: TextStyle(fontSize: 12, color: MyColors.greyShadeThree),
        ),
        Icon(Icons.looks_two_sharp, color: MyColors.blueShade),
      ],
    ),
    Text(
      '10:20',
      style: TextStyle(fontSize: 12, color: MyColors.greyShadeThree),
    ),
    Text(
      '10:20',
      style: TextStyle(fontSize: 12, color: MyColors.greyShadeThree),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 46,
        width: 137,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: MyColors.blueShade,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.plus, color: Color(0xffFDFDFD), size: 15),
              SizedBox(width: 4),
              Text('New Chat', style: TextStyle(color: Color(0xffFDFDFD))),
            ],
          ),
        ),
      ),
      backgroundColor: MyColors.whiteShadeTwo,
      body: Padding(
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
                SizedBox(width: 57),
                Text(
                  'Message',
                  style: TextStyle(fontSize: 18, color: MyColors.blackShadeOne),
                ),
              ],
            ),
            SizedBox(height: 23),
            SizedBox(
              width: 282,
              height: 52,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: MyColors.greyShadeThree,
                  ),
                  hintText: 'Search Message...',
                  suffixIcon: Image(
                    image: AssetImage(
                      'assets/images/main_screens/message/Filter.png',
                    ),
                  ),
                  hintStyle: TextStyle(fontSize: 16, color: MyColors.greyShade),
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
            SizedBox(height: 24),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Slidable(
                    key: ValueKey(images[index]),
                    endActionPane: ActionPane(
                      motion: DrawerMotion(),
                      extentRatio: 0.4,
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            setState(() {
                              images.removeAt(index);
                            });
                          },
                          backgroundColor: Color(0xffFFF5F5),
                          foregroundColor: Colors.red,
                          icon: Icons.delete,
                        ),
                      ],
                    ),
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Chat(),));
                      },
                      leading: Image(image: AssetImage(images[index])),
                      title: Text(
                        names[index],
                        style: TextStyle(
                          fontSize: 18,
                          color: MyColors.blackShadeOne,
                        ),
                      ),
                      subtitle: Text(
                        'Lorem ipsum dolor sit amet...',
                        style: TextStyle(
                          fontSize: 14,
                          color: MyColors.greyShadeThree,
                        ),
                      ),
                      trailing: time[index],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 259,
                        child: Divider(color: MyColors.greyShadeTwo),
                      ),
                    ],
                  );
                },
                itemCount: images.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
