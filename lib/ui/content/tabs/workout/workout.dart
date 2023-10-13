import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care_app/utils/app_assets.dart';

import '../../../../utils/colors.dart';

class Workout extends StatelessWidget {
  const Workout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 32),
        child:  Column(
          children: [
            Image.asset(AppAssets.exercise),

          ],
        ),
    );
  }
}
