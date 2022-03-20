import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/home/widget/category_title.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  const ActiveCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        CategoryTitle('Currently active', 'view all'),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(25),
          decoration: BoxDecoration(
              color: kFontLight.withOpacity(0.2),
              border: Border.all(
                color: kFontLight.withOpacity(0.3),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8)),
          child: Row(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('assets/images/progress.png', width: 60,), 
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Simmetry Theory',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kFont,
                    ),),
                    Text('2 lessons left',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kFontLight,
                    ),),
                  ],),          
                  SizedBox(width: 10,),
                  CircularPercentIndicator(
              radius: 60.0,
              lineWidth: 5.0,
              percent: 0.61,
              progressColor: kAccent,
              center: Text('61%', style: TextStyle(fontWeight: FontWeight.bold),),
            )
            ],
            ),
          ],),
        ),
      ]),
    );
  }
}
