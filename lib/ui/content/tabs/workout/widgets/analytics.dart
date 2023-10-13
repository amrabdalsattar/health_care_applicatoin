import 'package:flutter/cupertino.dart';

import '../../../../../utils/app_theme.dart';

class Analytics extends StatelessWidget {
  final String iconPath;
  final String iconDescription;
  final String analyticsNum;
  final String analyticsType;

  const Analytics({
    super.key,
    required this.iconPath,
    required this.iconDescription,
    required this.analyticsNum,
    required this.analyticsType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(iconPath),
            const SizedBox(
              width: 5,
            ),
            Text(iconDescription)
          ],
        ),
        const Spacer(),
        Row(
          children: [
            Text(
              analyticsNum,
              style: AppThemes.titles,
            ),
            Text(
              analyticsType,
              style: AppThemes.analytics,
            )
          ],
        ),
      ],
    );
  }
}
