import 'package:flutter/material.dart';
import 'package:health_care_app/utils/app_theme.dart';

class Exercise extends StatelessWidget {
  final Color color;
  final String text;
  String iconPath;

  Exercise(
      {super.key, required this.color, required this.text, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      padding: const EdgeInsets.all(6),
      width: MediaQuery
          .of(context)
          .size
          .width * 0.3871794871794872,
      height: MediaQuery
          .of(context)
          .size
          .height * 0.0740740740740741,

      child: Row(
        children: [
         Image.asset(iconPath),
          const SizedBox(width: 10,),
          Text(text, style: AppThemes.exerciseContainer,),
        ],
      ),
    );
  }
}
