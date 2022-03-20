import 'package:course_app/models/course.dart';
import 'package:course_app/screens/home/widget/course_item.dart';
import 'package:flutter/material.dart';

import 'category_title.dart';

class FeatureCourse extends StatelessWidget {
  const FeatureCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final coursesList = Course.generateCourses();
    return Container(
      child: Column(
        children: [
          CategoryTitle('Top of the week', 'View all'),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              itemCount: coursesList.length,
              itemBuilder: (context, index) => CourseItem(coursesList[index]), 
              separatorBuilder: (BuildContext context, int index) => SizedBox(width: 15,),
              ),
          ),
      ]),
    );
  }
}
