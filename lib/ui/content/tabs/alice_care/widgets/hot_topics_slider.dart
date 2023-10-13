import 'package:flutter/cupertino.dart';
import 'package:health_care_app/utils/app_assets.dart';

class HotTopicsSlider extends StatelessWidget {
  const HotTopicsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Image.asset(AppAssets.selCare),
            const SizedBox(width: 5,),
            Image.asset(AppAssets.cycle),
          ],
        ),
      ),
    );
  }
}
