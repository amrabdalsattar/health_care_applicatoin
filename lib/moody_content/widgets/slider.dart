import 'package:flutter/material.dart';
import 'package:health_care_app/utils/app_assets.dart';
import 'package:health_care_app/utils/app_theme.dart';
import 'package:health_care_app/utils/colors.dart';

class SliderGrid extends StatelessWidget {
  const SliderGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColor.lightGreen,
      ),
      child: Row(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Positive Vibes",
                  style: AppThemes.appDescription
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const Text(
                  "Boost your mood with positive vibes",
                  style: AppThemes.appDescription,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.play_circle,
                      color: AppColor.green,
                    ),
                    Text("10 mins", style: AppThemes.emotionDescription.copyWith(fontWeight: FontWeight.w500),)
                  ],
                )
              ],
            ),
          )),
          Expanded(child: Image.asset(AppAssets.character)),
        ],
      ),
    );
  }
}
