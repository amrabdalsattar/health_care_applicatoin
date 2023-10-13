import 'package:flutter/material.dart';
import '../../../../../utils/app_theme.dart';
import '../../../../../utils/colors.dart';


class ContainerDuration extends StatelessWidget {
  const ContainerDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.play_circle,
          color: AppColor.green,
        ),
        Text("10 mins", style: AppThemes.emotionDescription.copyWith(fontWeight: FontWeight.w500),)
      ],
    );
  }
}
