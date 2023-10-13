import 'package:flutter/cupertino.dart';
import 'package:health_care_app/utils/app_theme.dart';
import 'package:health_care_app/utils/colors.dart';

import '../../../../../utils/app_assets.dart';

class TabBarContent extends StatelessWidget {
  final int days;
  final String exerciseTitle;
  final String exerciseDescription;
  final String imagePath;

  const TabBarContent(
      {super.key,
      required this.days,
      required this.exerciseTitle,
      required this.exerciseDescription,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      margin: const EdgeInsets.only(top: 24),
      height: MediaQuery.of(context).size.height * 0.2301587301587302,
      color: AppColor.midGrey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      border: Border.all(color: AppColor.liteGrey, width: 1),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text("$days days"),
                ),
                Text(
                  exerciseTitle,
                  style: AppThemes.tabBarContentTitle,
                ),
                Text(
                  exerciseDescription,
                  style: AppThemes.tabBarContentDescription,
                ),
                const Row(
                  children: [
                    ImageIcon(AssetImage(AppAssets.duration)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("30 min")
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
              margin: const EdgeInsets.only(bottom: 14),
              child: Image.asset(imagePath))
        ],
      ),
    );
  }
}
