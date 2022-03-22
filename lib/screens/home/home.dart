import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/home/widget/active_course.dart';
import 'package:course_app/screens/home/widget/emoji_text.dart';
import 'package:course_app/screens/home/widget/feature_course.dart';
import 'package:course_app/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';

import '../../models/course.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(), 
            SearchInput(),
            FeatureCourse(),
            ActiveCourse(),
                    ],
        ),
      ),
      bottomNavigationBar: _buildBottonNavigationBar(),
    );
  }


  BottomNavigationBar _buildBottonNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackground,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Container(
            padding: EdgeInsets.only(bottom: 5),
            child: Text('Home',
            style: TextStyle(fontWeight: FontWeight.bold),),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: kAccent, width: 2))
            ),
          )
        ),
        BottomNavigationBarItem(
          label: 'calendar',
          icon: Image.asset('assets/icons/calendar.png',
        width: 20)),
        BottomNavigationBarItem(
          label: 'bookmark',
          icon: Image.asset('assets/icons/bookmark.png',
        width: 20)),
         BottomNavigationBarItem(
           label: 'user',
           icon: Image.asset('assets/icons/user.png',
        width: 20)),
      ],
    );
  }



  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text('HelloPlinio!',
        style: TextStyle(color: kFontLight,
        fontSize: 16),),
      ),
    actions: [
      Stack(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(right: 20,top: 10),
            decoration: BoxDecoration(border: Border.all(color: kFontLight.withOpacity(0.3), width: 2),
            borderRadius: BorderRadius.circular(15)),
            child: Image.asset('assets/icons/notification.png',
          width: 30,
          ),
          ),
          Positioned(
            top: 15,
            right: 30,
            child: Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(color: kAccent, shape: BoxShape.circle,),
            ),)
        ],
      )
    ],);
  }
}