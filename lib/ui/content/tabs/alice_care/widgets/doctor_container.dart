import 'package:flutter/material.dart';
import 'package:health_care_app/utils/app_assets.dart';
import 'package:health_care_app/utils/app_theme.dart';
import 'package:health_care_app/utils/colors.dart';

class DoctorContainer extends StatelessWidget {
  const DoctorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 12),
      margin: EdgeInsets.only(top: 16),
      height: MediaQuery.of(context).size.height * 0.2623828647925033,
      width: MediaQuery.of(context).size.width,
      color: AppColor.literGrey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: EdgeInsets.only(left: 12),
              child: Image.asset(AppAssets.doctor)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Connect with doctors & get suggestions",
                  style: AppThemes.seeMoreText,
                ),
                Text(
                  "Connect now and get expert insights",
                  style: AppThemes.emotionDescription,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("View details"),
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 14, vertical: 8)),
                      backgroundColor:
                          MaterialStatePropertyAll(AppColor.lightPurple)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
