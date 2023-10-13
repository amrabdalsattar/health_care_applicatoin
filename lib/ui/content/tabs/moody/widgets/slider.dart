import 'package:flutter/material.dart';
import 'package:health_care_app/utils/app_assets.dart';
import 'package:health_care_app/utils/app_theme.dart';
import 'package:health_care_app/utils/colors.dart';

import 'duration.dart';

class SliderGrid extends StatelessWidget {
  const SliderGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColor.lightGreen,
      ),
      child: Row(
        children: [
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 12),
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
                const ContainerDuration()
              ],
            ),
          )),
          Expanded(child: Image.asset(AppAssets.character)),
        ],
      ),
    );
  }
}
