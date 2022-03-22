import 'package:course_app/constants/colors.dart';
import 'package:course_app/models/course.dart';
import 'package:flutter/material.dart';

class CourseDescription extends StatelessWidget {
  
  final Course course;
  CourseDescription(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(course.authorImg, width: 20,),
              SizedBox(width: 5,),
              Text(course.author,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(width: 5,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kFontLight,
                ),
              ),
              Icon(Icons.access_time_filled, size: 20, color: kAccent,),
              SizedBox(width: 5,),
              Text('1h 35min', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: kFont,
              ),),
            ],
          ),
          SizedBox(height: 15,),
          Text(course.title, style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 22, color: kFont,
          ),),
          SizedBox(height: 15,),
          Text('How we developed paint technique and how it became such a powerful tool,\nlet\'s see!',
          style: TextStyle(
            wordSpacing: 2,
            fontSize: 16,
            color: kFontLight,
          ),)
        ],
      ),
    );
  }
}
