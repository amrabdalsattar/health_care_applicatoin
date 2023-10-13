import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:health_care_app/moody_content/widgets/description.dart';
import 'package:health_care_app/moody_content/widgets/dots.dart';
import 'package:health_care_app/moody_content/widgets/emojies_widget.dart';
import 'package:health_care_app/moody_content/widgets/exercise.dart';
import 'package:health_care_app/moody_content/widgets/slider.dart';
import 'package:health_care_app/utils/app_state_manager.dart';
import 'package:provider/provider.dart';

import '../../../utils/app_assets.dart';
import '../../../utils/app_theme.dart';
import '../../../utils/colors.dart';

class MoodyContent extends StatelessWidget {
  const MoodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    AppStateManager provider = Provider.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Image.asset(AppAssets.moody),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Moody",
                  style: AppThemes.moody,
                ),
                const Spacer(),
                const Badge(
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: AppColor.black,
                    size: 30,
                  ),
                )
              ],
            ),

            /// Top of the Screen

            const SizedBox(
              height: 24,
            ),

            Row(
              children: [
                const Text(
                  "Hello,",
                  style: AppThemes.welcomeText,
                ),
                Text(
                  " Sara Rose",
                  style: AppThemes.welcomeText
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),

            /// Welcome title

            const SizedBox(
              height: 12,
            ),

            const Text(
              "How are you feeling today ?",
              style: AppThemes.appDescription,
            ),

            const SizedBox(
              height: 16,
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Emotion(
                    emotionPath: AppAssets.loveEmotion, description: "love"),
                Emotion(
                    emotionPath: AppAssets.coolEmotion, description: "Cool"),
                Emotion(
                    emotionPath: AppAssets.happyEmotion, description: "Happy"),
                Emotion(emotionPath: AppAssets.sadEmotion, description: "Sad"),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Description(leftHand: "Features"),
            CarouselSlider(
              options: CarouselOptions(
                  height:
                      MediaQuery.of(context).size.height * 0.2222222222222222,
                  onPageChanged: (index, reason) {
                    provider.updateSliderCurrentIndex(index);
                  }),
              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return const SliderGrid();
                  },
                );
              }).toList(),
            ),
            const Dots(),
            const Description(leftHand: "Exercise"),
            Column(
              children: [
                Row(
                  children: [
                    Exercise(
                        color: AppColor.lightPurple,
                        text: "Relaxation",
                        iconPath: AppAssets.relaxation),
                    const Spacer(),
                    Exercise(
                        color: AppColor.lightPink,
                        text: "Meditation",
                        iconPath: AppAssets.meditation)
                  ],
                ),
                Row(
                  children: [
                    Exercise(
                        color: AppColor.lightOrange,
                        text: "Breathing",
                        iconPath: AppAssets.breathing),
                    const Spacer(),
                    Exercise(
                        color: AppColor.lightBlue,
                        text: "Yoga",
                        iconPath: AppAssets.yoga)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
