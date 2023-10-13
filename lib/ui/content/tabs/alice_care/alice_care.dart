import 'package:flutter/material.dart';
import 'package:health_care_app/ui/content/tabs/alice_care/widgets/chips.dart';
import 'package:health_care_app/ui/content/tabs/alice_care/widgets/doctor_container.dart';
import 'package:health_care_app/ui/content/tabs/alice_care/widgets/hot_topics_slider.dart';
import 'package:health_care_app/ui/content/tabs/moody/widgets/description.dart';
import 'package:health_care_app/utils/app_theme.dart';
import 'package:health_care_app/utils/colors.dart';

import '../../../../utils/app_assets.dart';

class AliceCare extends StatelessWidget {
  const AliceCare({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(AppAssets.logo),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical:
                      MediaQuery.of(context).size.height * 0.0321285140562249),
              height: MediaQuery.of(context).size.height * 0.0589022757697456,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: AppColor.white,
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Articles, Video, Audio and More,...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    )),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChipGenerator(chipIndex: 0, title: "Discover"),
                  ChipGenerator(chipIndex: 1, title: "News"),
                  ChipGenerator(chipIndex: 2, title: "Most Viewed"),
                  ChipGenerator(chipIndex: 3, title: "Saved"),
                ],
              ),
            ),
            const Description(leftHand: "Hot topics", color: AppColor.lightPurple,),
            const HotTopicsSlider(),
            const Text("Get Tips", style: AppThemes.titles,),
            const DoctorContainer(),

            const Description(leftHand: "Cycle Phases and Period", color: AppColor.lightPurple, except: true),
          ],
        ),
      ),
    );
  }
}
