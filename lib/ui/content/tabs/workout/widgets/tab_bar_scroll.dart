import 'package:flutter/cupertino.dart';
import 'package:health_care_app/ui/content/tabs/workout/widgets/tab_bar_content.dart';
import 'package:health_care_app/utils/app_assets.dart';

class TabBarScroll extends StatelessWidget {
  const TabBarScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TabBarContent(
              days: 7,
              exerciseTitle: "Morning Yoga",
              exerciseDescription: "Improve mental focus.",
              imagePath: AppAssets.removal),
          TabBarContent(
            days: 3,
            exerciseTitle: "Plank Exercise",
            exerciseDescription: "Improve posture and stability.",
            imagePath: AppAssets.exercise,
          ),
          TabBarContent(
              days: 7,
              exerciseTitle: "Morning Yoga",
              exerciseDescription: "Improve mental focus.",
              imagePath: AppAssets.removal),
        ],
      ),
    );
  }
}
