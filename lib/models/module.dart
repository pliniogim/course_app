import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Module {
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  Color moduleBorder;
  Color moduleBg;
  Color buttonColor;
  Color buttonFont;
  IconData icon;
  String title;
  String description;
  String time;
  String lesson;

  Module(
      this.iconBorder,
      this.iconBg,
      this.iconColor,
      this.icon,
      this.title,
      this.description,
      this.moduleBorder,
      this.moduleBg,
      this.buttonColor,
      this.buttonFont,
      this.time,
      this.lesson);

      static List<Module> generateModules() {
        return [
          Module(kAccent, kAccent, Colors.white, 
          Icons.play_arrow_rounded, 'Module 1', 
          'How it all started.\nExplanation...', kPrimaryLight, 
          kPrimaryLight, kPrimaryColor, kPrimaryDark, '22 min', '2 lessons'),
        ];
      }

}
