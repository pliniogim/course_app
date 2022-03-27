import 'package:course_app/constants/colors.dart';
import 'package:course_app/models/module.dart';
import 'package:course_app/screens/detail/widget/course_module.dart';
import 'package:flutter/material.dart';

class CourseProgress extends StatelessWidget {
  const CourseProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final modulesList = Module.generateModules();
    return Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('The Progress',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: kFont,
                    )),
                Row(children: [
                  Image.asset(
                    'assets/icons/grid.png',
                    width: 25,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'assets/icons/list.png',
                    width: 25,
                  ),
                ]),
              ],
            ),
            SizedBox(height: 20),
            ...modulesList.map((e) => CourseModule(e)).toList(),
            //CourseModule(modulesList[0]),
            //CourseModule(modulesList[1]),
          ],
        ));
  }
}
