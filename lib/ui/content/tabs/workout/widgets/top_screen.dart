import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/app_assets.dart';
import '../../../../../utils/app_theme.dart';
import '../../../../../utils/colors.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppAssets.ellipse),
        const SizedBox(width: 20,),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello, Jade", style: AppThemes.appDescription,),
            SizedBox(height: 10,),
            Text("Ready to workout", style: AppThemes.titles,),
          ],
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
    );
  }
}
