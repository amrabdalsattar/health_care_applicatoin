import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_theme.dart';
import '../../utils/colors.dart';

class Description extends StatelessWidget {
  final String leftHand;
  const Description({super.key, required this.leftHand});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Text(
            leftHand,
            style: AppThemes.titles,
          ),
          const Spacer(),
          const Row(
            children: [
              Text(
                "See more",
                style: AppThemes.seeMoreText,
              ),
              Icon(
                Icons.chevron_right,
                color: AppColor.green,
              )
            ],
          ),
        ],
      ),
    );
  }
}
