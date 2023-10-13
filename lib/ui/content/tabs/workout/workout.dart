import 'package:flutter/material.dart';
import 'package:health_care_app/ui/content/tabs/workout/widgets/analytics.dart';
import 'package:health_care_app/ui/content/tabs/workout/widgets/tab_bar.dart';
import 'package:health_care_app/ui/content/tabs/workout/widgets/top_screen.dart';
import 'package:health_care_app/utils/app_assets.dart';
import 'package:health_care_app/utils/app_theme.dart';
import 'package:health_care_app/utils/colors.dart';

class Workout extends StatelessWidget {
  final Widget verticalWidget = const VerticalDivider(
    color: AppColor.purple,
    width: 2,
  );

  const Workout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopScreen(),
          SizedBox(
            height: 26,
          ),
          Container(
            padding: const EdgeInsets.only(top: 17, left: 20, bottom: 16,right: 20),
            color: AppColor.literGrey,
            height: MediaQuery.of(context).size.height * 0.1084656084656085,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Analytics(
                    iconPath: AppAssets.heart,
                    iconDescription: "Heart Rate",
                    analyticsNum: "81",
                    analyticsType: "Bpm"),
                verticalWidget,
                const Analytics(
                    iconPath: AppAssets.todo,
                    iconDescription: "To-do",
                    analyticsNum: "32,5",
                    analyticsType: "%"),
                verticalWidget,
                Analytics(
                    iconPath: AppAssets.calo,
                    iconDescription: "Calo",
                    analyticsNum: "1000",
                    analyticsType: "Cal")
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.0317460317460317),
              child: Text("Workout Program", style: AppThemes.titles,)),
          const Expanded(child: MyTabBar()),
        ],
      ),
    );
  }
}
